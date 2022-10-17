# Levene's Test

##### Description

Test for significant pairwise differences among group means while controlling for Family-Wise Error Rate.

##### Usage

Input projection|.
---|---
`color` | represents the groups to compare
`y-axis`| measurement value

Output relations|.
---|---
`DF1`| Degrees of Freedom in the numerator
`DF2`| Degrees of Freedom in the denominator
`statistic`| Test statistic
`p`| p-value

##### Details

The operator is based on the [levene_test R function](https://www.rdocumentation.org/packages/rstatix/versions/0.7.0/topics/levene_test).

##### References

See [Levene's test on Wikipedia](https://en.wikipedia.org/wiki/Levene%27s_test).

##### See Also

[ANOVA operator](https://github.com/tercen/anova_operator)
