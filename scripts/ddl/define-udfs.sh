/**
 * A bootstrap script to register UDF on spark-shell
 */

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS hivemall_version")
sqlContext.sql("CREATE TEMPORARY FUNCTION hivemall_version AS 'hivemall.HivemallVersionUDF'")

/**
 * Binary classification
 */

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_perceptron")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_perceptron AS 'hivemall.classifier.PerceptronUDTF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_pa")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_pa AS 'hivemall.classifier.PassiveAggressiveUDTF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_pa1")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_pa1 AS 'hivemall.classifier.PassiveAggressiveUDTF$PA1'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_pa2")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_pa2 AS 'hivemall.classifier.PassiveAggressiveUDTF$PA2'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_cw")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_cw AS 'hivemall.classifier.ConfidenceWeightedUDTF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_arow")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_arow AS 'hivemall.classifier.AROWClassifierUDTF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_arowh")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_arowh AS 'hivemall.classifier.AROWClassifierUDTF$AROWh'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_adagrad_rda")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_arowh AS 'hivemall.classifier.AdaGradRDAUDTF'")

/**
 * Multiclass classification
 */

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_multiclass_perceptron")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_multiclass_perceptron AS 'hivemall.classifier.multiclass.MulticlassPerceptronUDTF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_multiclass_pa")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_multiclass_pa AS 'hivemall.classifier.multiclass.MulticlassPassiveAggressiveUDTF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_multiclass_pa1")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_multiclass_pa1 AS 'hivemall.classifier.multiclass.MulticlassPassiveAggressiveUDTF$PA1'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_multiclass_pa2")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_multiclass_pa2 AS 'hivemall.classifier.multiclass.MulticlassPassiveAggressiveUDTF$PA2'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_multiclass_cw")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_multiclass_cw AS 'hivemall.classifier.multiclass.MulticlassConfidenceWeightedUDTF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_multiclass_scw")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_multiclass_scw AS 'hivemall.classifier.multiclass.MulticlassSoftConfidenceWeightedUDTF$SCW1'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_multiclass_scw2")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_multiclass_scw2 AS 'hivemall.classifier.multiclass.MulticlassSoftConfidenceWeightedUDTF$SCW2'")

/**
 * Regression functions
 */

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_logregr")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_logregr AS 'hivemall.regression.LogressUDTF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_pa1_regr")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_pa1_regr AS 'hivemall.regression.PassiveAggressiveRegressionUDTF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_pa1a_regr")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_pa1a_regr AS 'hivemall.regression.PassiveAggressiveRegressionUDTF$PA1a'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_pa2_regr")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_pa2_regr AS 'hivemall.regression.PassiveAggressiveRegressionUDTF$PA2'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_pa2a_regr")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_pa2a_regr AS 'hivemall.regression.PassiveAggressiveRegressionUDTF$PA2a'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_adadelta")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_adadelta AS 'hivemall.regression.AdaDeltaUDTF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_adagrad")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_adagrad AS 'hivemall.regression.AdaGradUDTF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_arow_regr")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_arow_regr AS 'hivemall.regression.AROWRegressionUDTF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_arowe_regr")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_arow_regr AS 'hivemall.regression.AROWRegressionUDTF$AROWe'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS train_arowe2_regr")
sqlContext.sql("CREATE TEMPORARY FUNCTION train_arow_regr AS 'hivemall.regression.AROWRegressionUDTF$AROWe2'")

/**
 * Voting functions
 */

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS voted_avg")
sqlContext.sql("CREATE TEMPORARY FUNCTION voted_avg AS 'hivemall.ensemble.bagging.VotedAvgUDAF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS weight_voted_avg")
sqlContext.sql("CREATE TEMPORARY FUNCTION weight_voted_avg AS 'hivemall.ensemble.bagging.WeightVotedAvgUDAF'")

/**
 * mapred functions
 */

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS rowid")
sqlContext.sql("CREATE TEMPORARY FUNCTION rowid AS 'hivemall.tools.mapred.RowIdUDFWrapper'")

/**
 * mapred functions
 */

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS sigmoid")
sqlContext.sql("CREATE TEMPORARY FUNCTION sigmoid AS 'hivemall.tools.math.SigmodUDF'")

/**
 * Dataset generator function
 */

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS lr_datagen")
sqlContext.sql("CREATE TEMPORARY FUNCTION lr_datagen AS 'hivemall.dataset.LogisticRegressionDataGeneratorUDTFWrapper'")

/**
 * scaling functions
 */

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS rescale")
sqlContext.sql("CREATE TEMPORARY FUNCTION rescale AS 'hivemall.ftvec.scaling.RescaleUDF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS zscore")
sqlContext.sql("CREATE TEMPORARY FUNCTION zscore AS 'hivemall.ftvec.scaling.ZScoreUDF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS normalize")
sqlContext.sql("CREATE TEMPORARY FUNCTION normalize AS 'hivemall.ftvec.scaling.L2NormalizationUDF'")

/**
 * hashing functions
 */

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS mhash")
sqlContext.sql("CREATE TEMPORARY FUNCTION mhash AS 'hivemall.ftvec.hashing.MurmurHash3UDF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS sha1")
sqlContext.sql("CREATE TEMPORARY FUNCTION sha1 AS 'hivemall.ftvec.hashing.Sha1UDF'")

/**
 * amplifier functions
 */

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS amplify")
sqlContext.sql("CREATE TEMPORARY FUNCTION amplify AS 'hivemall.ftvec.amplify.AmplifierUDTF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS rand_amplify")
sqlContext.sql("CREATE TEMPORARY FUNCTION rand_amplify AS 'hivemall.ftvec.amplify.RandomAmplifierUDTF'")

/**
 * Misc functions
 */

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS add_bias")
sqlContext.sql("CREATE TEMPORARY FUNCTION add_bias AS 'hivemall.ftvec.AddBiasUDFWrapper'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS sort_by_feature")
sqlContext.sql("CREATE TEMPORARY FUNCTION sort_by_feature AS 'hivemall.ftvec.SortByFeatureUDF'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS extract_feature")
sqlContext.sql("CREATE TEMPORARY FUNCTION extract_feature AS 'hivemall.ftvec.ExtractFeatureUDFWrapper'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS extract_weight")
sqlContext.sql("CREATE TEMPORARY FUNCTION extract_weight AS 'hivemall.ftvec.ExtractWeightUDFWrapper'")

// sqlContext.sql("DROP TEMPORARY FUNCTION IF EXISTS add_feature_index")
sqlContext.sql("CREATE TEMPORARY FUNCTION add_feature_index AS 'hivemall.ftvec.AddFeatureIndexUDFWrapper'")