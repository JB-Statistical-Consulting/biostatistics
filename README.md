# A free biostatistics reading list :)

## Foundational Questions
- Perezgonzalez, Fisher, Neyman-Pearson or NHST? A tutorial for teaching data testing, 2015 (https://doi.org/10.3389/fpsyg.2015.00223)
  - An interesting overview of the two foundational classical approaches to testing in statistics: Fisher's approach and the Neyman-Pearson framework. The third approach, Null Hypothesis Significance Testing (NHST) is presented as a loose and controversial approach lacking rigour. A must read!

## Classics
- R. A. Fisher, *The Design of Experiments*, 1935 (Book)

  - Contains Fisher's famous lady-tasting tea experiment, first example I know of permutation testing, many groundbreaking examples of Analysis of Variance (ANOVA), and some disparaging (and very funny) remarks towards Pearson.

## Causal Inference

- Fundamentals
  - Judea Pearl, Causality : Models, Reasoning and Inference, 2000, updated in 2009 (Book)
    - A true masterpiece. A technical and deep exposition of Pearl's life work on Directed Acyclic Graphs (DAGs) as Structural Causal Models (SCMs) that got me started on my causal inference journey. His viewpoint is an alternative to the Neyman-Rubin causal model based on potential outcomes. This book can also be seen as the academic version of The Book of Why, a famous general-audience book on causality.
    
  - Guido W. Imbend and Donald B. Rubin, Causal Inference for Statistics, Social, and Biomedical Sciences, 2015 (Book)
    - A true masterpiece. The most achieved and thorough exposition of the Neyman-Rubin causal model based on potential outcomes. It is an alternative to Pearl's DAG and SCM framework (see above). A beautiful book that I find myself going back to often, for its depth and breadth of insights into thinking about causal inference. Imbens is an economist who contributed much to this field, most notably through is Local-Average Treatment Effect identification in cases of non-compliance. Rubin is one of the greatest living statisticians.

## Modeling proportions data (in the 0-1 interval)
### Beta regression

- Foundational papers
  - Kieschnick & McCullough, *Regression analysis of variates observed on (0, 1): percentages, proportions and fractions*, 2003 (https://doi.org/10.1191/1471082X03st053oa)
  - Ferrari & Cribari-Neto, *Beta Regression for Modelling Rates and Proportions*, 2004 (https://doi.org/10.1080/0266476042000214501)
    
- Regression tools
  - Cribari-Neto & Zeilis, *Beta Regression in R*, 2010
    - The paper accompagnying the R package betareg
  - Kubinec, *Ordered Beta Regression: A Parsimonious, Well-Fitting Model for Continuous Data with Lower and Upper Bounds*, 2021 (https://doi.org/10.1017/pan.2022.20)
    - A paper proposing an alternative to the Zero-One Inflated Beta (ZOIB Model)
  
### Simplex Regression  
- Zhang, Qiu & Shi, *simplexreg: An R Package for Regression Analysis of Proportional Data Using the Simplex Distribution*, 2016 (https://doi.org/10.18637/jss.v071.i11)
  - Simplex Regression, an alternative to beta regression using the Simplex distribution. Incorporates both MLE and GEE techniques.
      
# Contact
- Visit www.justinbelair.ca if you have any questions or need help with statistics.

![alt text](https://github.com/JB-Statistical-Consulting/biostatistics/blob/main/contact.png)