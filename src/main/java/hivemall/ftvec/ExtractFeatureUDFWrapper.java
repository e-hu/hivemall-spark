/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package hivemall.ftvec;

import org.apache.hadoop.hive.ql.exec.UDFArgumentException;
import org.apache.hadoop.hive.ql.exec.UDFArgumentLengthException;
import org.apache.hadoop.hive.ql.exec.UDFArgumentTypeException;
import org.apache.hadoop.hive.ql.metadata.HiveException;
import org.apache.hadoop.hive.ql.udf.generic.GenericUDF;
import org.apache.hadoop.hive.serde2.objectinspector.*;
import org.apache.hadoop.hive.serde2.objectinspector.ObjectInspector.Category;
import org.apache.hadoop.hive.serde2.objectinspector.PrimitiveObjectInspector.PrimitiveCategory;
import org.apache.hadoop.hive.serde2.objectinspector.primitive.PrimitiveObjectInspectorFactory;
import org.apache.hadoop.io.Text;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * A wrapper of [[hivemall.ftvec.ExtractFeatureUDF]].
 *
 * NOTE: This is needed to avoid the issue of Spark reflection.
 * That is, spark-1.3 cannot handle List<> as a return type in Hive UDF.
 * The type must be passed via ObjectInspector.
 * This issues has been reported in SPARK-6747, so a future
 * release of Spark makes the wrapper obsolete.
 */
public class ExtractFeatureUDFWrapper extends GenericUDF {
    private ExtractFeatureUDF udf = new ExtractFeatureUDF();
    private PrimitiveObjectInspector argOI = null;

    @Override
    public ObjectInspector initialize(ObjectInspector[] arguments) throws UDFArgumentException {
        if(arguments.length != 1) {
            throw new UDFArgumentLengthException(
                    "extract_feature() has an only single argument.");
        }
        switch(arguments[0].getCategory()) {
            case PRIMITIVE:
                argOI = (PrimitiveObjectInspector) arguments[0];
                if (argOI.getPrimitiveCategory()
                        == PrimitiveCategory.STRING) {
                    break;
                }
            default:
                throw new UDFArgumentTypeException(0,
                    "extract_feature() must have String as an argument, but "
                        + arguments[0].getTypeName() + " was found.");
        }
        return PrimitiveObjectInspectorFactory.javaStringObjectInspector;
    }

    @Override
    public Object evaluate(DeferredObject[] arguments) throws HiveException {
        assert(arguments.length == 1);
        final String input = (String) argOI.getPrimitiveJavaObject(arguments[0].get());
        return udf.evaluate(input);
    }

    @Override
    public String getDisplayString(String[] children) {
        return "extract_feature(" + Arrays.toString(children) + ")";
    }
}