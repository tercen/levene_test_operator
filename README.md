# Tukey's Test

##### Description

Test for significant pairwise differences among group means while controlling for Family-Wise Error Rate.

##### Usage

Input projection|.
---|---
`color` | represents the groups to compare
`labels` (optional) | represents the random effects to include in the model
`y-axis`| measurement value

Output relations|.
---|---
`Effect`| Effect
`DFn`| Degrees of Freedom in the numerator
`DFd`| Degrees of Freedom in the denominator
`F`| F-value
`p`| p-value
`significance`| Highlights p-values less than the traditional alpha level of .05
`ges`| Generalized Eta-Squared measure of effect size

##### Details

The operator is based on the [tukey_hsd R function](https://www.rdocumentation.org/packages/rstatix/versions/0.7.0/topics/tukey_hsd).

##### References

See [Tukey's range test on Wikipedia](https://en.wikipedia.org/wiki/Tukey%27s_range_test).

##### See Also

[ANOVA operator](https://github.com/tercen/anova_operator)
