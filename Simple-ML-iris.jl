using PrettyPrinting, StableRNGs, DecisionTree, MLJDecisionTreeClassifier, Statistics, StatsBase, RDatasets, Plots, MLJ

iris_X, iris_y = @load_iris

DecisionTreeClassifier = @load DecisionTreeClassifier pkg=DecisionTree
tree_model = DecisionTreeClassifier()

# machine object in MLJ.jl acts as the bridge that connects a model (the algorithm's blueprint) with specific data (the actual values).
tree = machine(tree_model, iris_X, iris_y)

# For reproducible splitting
rng = StableRNG(123)
train, test = partition(eachindex(iris_y), 0.7, shuffle=true, rng=rng)

# `fit!` modifies the `machine` object in-place, storing the learned parameters.
MLJ.fit!(tree, rows=train)

y_pred = MLJ.predict(tree, rows=test)
y_pred_mode = MLJ.predict_mode(tree, rows=test)

confusion_matrix(y_pred_mode, iris_y[test])

mce = MLJ.cross_entropy(y_pred, iris_y[test])
