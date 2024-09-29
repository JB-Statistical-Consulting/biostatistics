# A free biostatistics reading list (with Causal Inference)

- Visit [www.justinbelair.ca](https://www.justinbelair.ca/?utm_source=GitHub&utm_medium=reading_list&utm_campaign=header) if you have any questions or need help with statistics.
- Visit [www.biostatistics.ca](https://www.biostatistics.ca/?utm_source=Github&utm_medium=reading_list&utm_campaign=header) for blog articles about biostatistics/causal inference, comprehensive guides about education/careers in biostatistics/causal inference, free downloadable resources, and more.

## Fundamentals

### Hypothesis Testing

- [Huang et al., Formulating Appropriate Statistical Hypotheses for Treatment Comparison in Clinical Trial Design and Analysis, 2014](https://doi.org/10.1016%2Fj.cct.2014.09.005)
  - This paper is quite technical, but truly amazing! Anybody with a background in pure statistics should read this paper to widen their theoretical understanding of designing hypotheses tests to be applied in research settings. I can't recommend this paper enough!

- [Delacre, Lakens & Leys, Why Psychologists Should by Default Use Welch's t-test Instead of Student's t-test, 2017](https://doi.org/10.5334/irsp.82)
  - A must-read! Take-home message : t-test is great, especially its robust forms!
  
- [Lakens et al., Equivalence Testing for Psychological Research: A Tutorial, 2018](https://doi.org/10.1177/2515245918770963)
  - A great gentle introduction to minimal-effects testing, equivalence testing, and inferiority testing. These are underutilized tools that should be taught to any applied researchers using hypothesis tests for experimental data! A must read.
  - Related to this paper is an R package called TOSTER, developed by Lakens and others. Check out the [package vignette here](https://cran.rstudio.com/web/packages/TOSTER/vignettes/IntroductionToTOSTER.html)

### Misinterpretations of p-values, power analysis, and other concepts
- [Sander Greenland et al., Statistical tests, P values, confidence intervals, and power: a guide to misinterprations, 2016](https://doi.org/10.1007%2Fs10654-016-0149-3)
  - THE resource for all p-value misinterpretations by a collection of eminent statisticians. Must be read and re-read!
- [Sander Greenland, Nonsignificance Plus High Power Does Not Imply Supper for the Null Over the Alternative, 2012](https://doi.org/10.1016/j.annepidem.2012.02.007)
  - The title says it all...it's an easy mistake to make!
- [John M. Hoenig & Dennis M. Heisey, The Abuse of Power: The Pervasive Fallacy of Power Calculations for Data Analysis, 2001](https://doi.org/10.1198/000313001300339897)
  - Power is a widely misunderstood statistical concept. Study it!
- [Steven Goodman, A Dirty Dozen: Twelve P-Value Misconceptions, 2008](https://doi.org/10.1053/j.seminhematol.2008.04.003)
  - The title says it all.
- [Harvey J. Motulsky, Common misconceptions about data analysis and statistics, 2014](https://doi.org/10.1007%2Fs00210-014-1037-6)
  - Goes over many misconceptions. It is quite beginner friendly, take a look!
  
### Design of Experiments

- B.J. Winer, Donald R. Brown, Kenneth M. Michels, Statistical Principles in Experimental Design, Third edition, 1991 (Book)
  - A very thick book that thoroughly covers a wide-array of experimental designs. A great reference manual for anyone working on experimental research, espcially with human-subjects (e.g. psychology)

- [Leducq et al., Research Techniques Made Simple : Randomized Controlled Trials for Topical Drugs in Dermatology: When and How Should We Use a Within-Person Design?, 2020](https://doi.org/10.1016/j.jid.2020.03.945)
  - A great introduction to the within-person (aka within-patient, within-subject) randomized controlled trial. This type of trial is used when it is possible to use a patient as its own control (e.g. in ophthalmology, where each eye can be randomized to a different treatment).

- [Pandis et al., CONSORT 2010 statement: extension checklist for reporting within person randomised trials, 2017](https://doi.org/10.1136/bmj.j2835)
  - Anyone running a within-person trial should consult these guidelines for maximizing the utility of what they report from the trial!

### Lord's Paradox
- [Frederic M. Lord, A Paradox in the Interpretation of Group Comparisons, 1967](https://psycnet.apa.org/doi/10.1037/h0025105)
  - The first very influential paper describing what is now known as Lord's Paradox.
- [Frederic M. Lord, Statistical Adjustments When Comparing Preexisting Groups, 1969](https://psycnet.apa.org/doi/10.1037/h0028108)
  - Lord's second paper that goes into more details on his 'paradox'
- [Judea Pearl, Lord's Paradox Revisited - (Oh Lord! Kumbaya!), 2016](https://doi.org/10.1515/jci-2016-0021)
  - A causal inference perspective by one of its main contributors, Judea Pearl. (See Causal Inference section of this reading list)
  
### Survey Sampling

- [W.G Cochran, The Use of the Analysis of Variance In Enumeration By Sampling, 1938](https://doi.org/10.2307/2279483)
  - A landmark paper on survey sampling where the idea to use ANOVA to estimate properties of the sampling design. Cochran also mentions the idea of an infinite population in relation to sampling theory.
  
- [V.P. Godambe and M.E. Thompson, Parameters of Superpopulation and Survey Population: Their Relationships and Estimation, 1986](https://doi.org/10.2307/1403139)
  - A highly technical paper on the use of estimating functions to relate superpopulation parameters with those of a survey population under study.
  
- [J.N.K. Rao, Interplay Between Sample Survey Theory and Practice : An Appraisal, 2005](https://www150.statcan.gc.ca/n1/en/catalogue/11-522-X20050019443)
  - A thorough historical overview of the evolution of survey sampling theory through the interplay between theory and practice.

### Philosophical Questions
- [Jose D. Perezgonzalez, *Fisher, Neyman-Pearson or NHST? A tutorial for teaching data testing*, 2015](https://doi.org/10.3389/fpsyg.2015.00223)
  - An interesting overview of the two foundational classical approaches to testing in statistics: Fisher's approach and the Neyman-Pearson framework. The third approach, Null Hypothesis Significance Testing (NHST) is presented as a loose and controversial approach lacking rigour. A must read!

### Classics
- R. A. Fisher, *The Design of Experiments*, 1935 (Book)

  - Contains Fisher's famous lady-tasting tea experiment, first example I know of permutation testing, many groundbreaking examples of Analysis of Variance (ANOVA), and some disparaging (and very funny) remarks towards Pearson.
  
## Missing Data
- [Stef van Buuren, *Flexible Imputation of Missing Data*, 2018 (Book, with online version](https://stefvanbuuren.name/fimd/))
  - A must-have for any applied statistician dealing with missing data problems. This book presents the state-of-the-art in multiple imputation (MI), a field where van Buuren made his name. Contains lots of concrete examples with code, discusses trade-offs in complex situations, and gives lots of references to literature with simulation studies to back any claims up.
  
- Gert Molenberghs and Michael G. Kenward, *Missing Data in Clinical Studies*, 2007 (Book)
  - A deep and thorough exposition of missing data in clinical studies. A complex book for advanced statisticians, especially those working in clinical studies.
  
- Roderick J. A. Little & Donald B. Rubin, *Statistical Analysis with Missing Data*, 2002 (Book)
  - The first textbook put together to reflect the growing literature on missing data methodology. Still useful, although van Buuren, 2018 is probably better suited for applied statisticians

## Causal Inference

### Fundamentals
- Judea Pearl, *Causality : Models, Reasoning and Inference*, 2000, updated in 2009 (Book)
  - A true masterpiece. A technical and deep exposition of Pearl's life work on Directed Acyclic Graphs (DAGs) as Structural Causal Models (SCMs) that got me started on my causal inference journey. His viewpoint is an alternative to the Neyman-Rubin causal model based on potential outcomes. This book can also be seen as the academic version of The Book of Why, a famous general-audience book on causality.
    
- Guido W. Imbens and Donald B. Rubin, *Causal Inference for Statistics, Social, and Biomedical Sciences*, 2015 (Book)
  - A true masterpiece. The most achieved and thorough exposition of the Neyman-Rubin causal model based on potential outcomes. It is an alternative to Pearl's DAG and SCM framework (see above). A beautiful book that I find myself going back to often, for its depth and breadth of insights into thinking about causal inference. Imbens is an economist who contributed much to this field, most notably through is Local-Average Treatment Effect identification in cases of non-compliance. Rubin is one of the greatest living statisticians.
  
- Judea Pearl, Madelyn Glymour & Nicholas P. Jewell, *Causal Inference in Statistics : A Primer*, 2016 (Book)
  - A gentle introduction to Directed Acyclic Graphs (DAGs) and Structural Causal Models (SCMs) at about the undergraduate in statistics level.
  
- Bill Shipley, *Cause and Correlation in Biology : A User's Guide to Path Analysis, Structural Equations and Causal Inference*, 2000 (Book)
  - A well-written introduction to causal inference for biologists, with an emphasis of Structural Equation Models (SEMs) and Path Analysis. There is also a little bit of interesting history sprinkled in. I took a class with this professor (who just retired from a University close to my home town) in 2023 and his focus on biological applications without sacrificing rigour is great for any non-statistician looking to tackle complex statistical methods!
  
- Paul R. Rosenbaum, *Observational Studies*, 1995 (Book)
  - A compact monograph by one of the inventors of the propensity score (PS) with a clear writing style. I've always enjoyed Rosenbaum's incisive perspectives on problems related to causality in observational studies!
  
- Tyler J. VanderWeele, *Explanations in Causal Inference : Methods for Mediation and Interaction*, 2015 (Book)
  - A thick, somewhat terse book by the leading researcher in mediation and interaction analysis in causal inference. This book is aimed at advanced users of causal inference methods, but it is truly unique in its depth of the subject! It is written by an epidemiologist but he also targets a social science audience.

### Tutorials

- [Andy Wilson & Aimee Harrison, Crash course on confounding, bias, and deconfounding remedies using R, 2024] (https://www.biostatistics.ca/crash-course-on-confounding-bias-and-deconfounding-remedies-using-r/)
	- A great blog post about practical, hands-on methods (including R code) to remove confounding and estimate unbiased treatment effects.

### Propensity Score

- [Peter C. Austin, An Introduction to Propensity Score Methods for Reducing the Effects of Confounding in Observational Studies, 2011](https://doi.org/10.1080%2F00273171.2011.568786)
	- A great introduction to propensity score (PS) methods used for matching, stratification, and IPTW methods with comparisons between them. There is also a discussion about computing covariate balance and choosing predictors for the propensity score model. It ends with a discussion about PS methods vs. regression adjustment.
- [Brookhart et al., Variable Selection for Propensity Score Models, 2006](https://doi.org/10.1093/aje/kwj149)
	- A thorough discussion grounded in simulation studies about when to include variables in the propensity score (PS) model, especially by considering them as related to the treatment, the outcome, or both.
- [King & Nielsen, Why Propensity Scores Should Not Be Used for Matching, 2019](https://gking.harvard.edu/files/gking/files/pan1900011_rev.pdf)
	- A much-discussed paper that criticizes propensity score matching techniques on grounds that the method tries to approximate complete randomization, while approximating block (or stratified) randomization gives better results.
- [Schuster et al., Propensity score model overfitting led to inflated variance of estimated odds ratios, 2016](https://doi.org/10.1016/j.jclinepi.2016.05.017)
	- A Monte Carlo simulation showing why propensity score (PS) models shouldn't be overfit. As a matter of fact, the quality of fit is not a primary concern when fitting a PS model.
- [Setoguchi et al., Evaluating uses of data mining techniques in propensity score estimation: a simulation study, 2008](https://doi.org/10.1002/pds.1555)
	- A simulation study evaluation of logistic regression (LR), tree-based methods with and without pruning, and neural networks as the model classes used to fit propensity score (PS) models. The main takeaway is that results based on a LR PS model are robust.
- [Elizabeth Stuart, Matching methods for causal inference: A review and a look forward, 2010](https://doi.org/10.1214%2F09-STS313)
	- The title says it all : a review and look forward about different matching techniques used to emulate randomized trials, including propensity score matching.
- [Rosenbaum & Rubin, The Central Role of the Propensity Score in Observational Studies for Causal Effects, 1983] (https://doi.org/10.2307/2335942)
	- The landmark paper where the propensity score is introduced and its properties derived, most notably that conditioning on the propensity score also "deconfounds" the treatment assignment. A classic.

## Clinical Prediction Modelling

When building prediction models, we are less interested about inference on the parameters and more focused on the values and uncertainty of the predictions. In clinical settings, robust prediction models can mean the difference between life and death!

- [Ewout W. Steyerberg, Clinical Prediction Models, 2010 (Book, with online content)](https://www.clinicalpredictionmodels.org/)
  - A pretty thick reference manual by a leader in the field. Aimed especially towards prediction models in clinical settings, it's a must-have for any advanced modeller looking to make a difference in healthcare with novel technologies.
  
- [Collins et al., Evaluation of clinical prediction models (part 1): from development to external validation, 2024](https://doi.org/10.1136/bmj-2023-074819)
  - Part 1 of a step-by-step tutorial on rigorous and robust clinical prediction model-building, focused on the early stages of model-building.
  
- [Riley et al., Evaluation of clinical prediction models (part 2): how to undertake an external validation study, 2024](https://doi.org/10.1136/bmj-2023-074820)
  - Part 2 of a step-by-step tutorial on rigorous and robust clinical prediction model-building, focused on conducting external validation of the model built following the steps outlined in part 1.
  
- [Riley et al., Evaluation of clinical prediction models (part 3): calculating the sample size required for an external validation study, 2024](https://doi.org/10.1136/bmj-2023-074821)
  - Part 3 of a step-by-step tutorial on rigorous and robust clinical prediction model-building, focused on power and sample size calculations. It is often difficult to know the sample-size required for adequate external validation data. This guide offers detailed instructions on conducting these estimations, once we've built a model.  
  
## Epidemiology

### Fundamentals

Epidemiology is a discipline distinct from biostatistics, but there is strong overlap in the methods.
Epidemiology relies on many difficult design principles to obtain valid inferences. A few textbooks that are must-haves for epidemiologists.

- Kenneth J. Rothman & Sander Greenland, Modern Epidemiology, Second Edition, 1998 (Book)
  - The bible of modern epidemiology. An authoritative textbook on study design principles. Its sections on analysis techniques are a bit dated. Also, it doesn't discuss much of the causal inference techniques and principles that have come to slowly dominate the field through the works of VanderWeele, Hernàn, Robins and others. Still, anybody wishing to understand how to think like an epidemiologist must tackle this book. Its explanation of case-control studies and their peculiarities is particularly illuminating. 
  
- Leon Gordis, Epidemiology, Fifth Edition, 2014 (Book)
  - A very popular introduction to Epidemiology in color with many images and illustrations. A good tool to learn the basics of epidemiological design principles.
  
### Bradford Hill Criteria And Their Legacy

In 1965, Bradford Hill proposed a series of 9 criteria which should be thought about when trying to uncover a causal relationship among the correlational noise. Causal inference has a gone a long way since, but these 9 criteria are still widely discussed and serve as guiding principles in epidemiology and its subfields.

- [Sir Austin Bradford Hill, The Environment and Disease: Association or Causation?, 1965](https://doi.org/10.1177/003591576505800503)
  - The classic President's Address delivered to newly formed Section of Occupational Medicine of the Royal Society of Medicine by Sir Bradford Hill in which he presents his famous 9 criteria for an association to be deemed causal. The paper went on to become tremendously influential and its still commented to this day.
  
- [Glass, Goodman, Hernan & Samet, Causal Inference in Public Health, 2013](https://doi.org/10.1146/annurev-publhealth-031811-124606)
  - A modern discussion of causal inference through the lens of policymaking in public health areas.
  
- [Fedak et al., Applying the Bradford Hill criteria in the 21st century: how data integration has changed causal inference in molecular epidemiology, 2015](https://doi.org/10.1186%2Fs12982-015-0037-4)
  - Discusses how our understanding of Bradford Hill's original 9 criteria has evolve over time through a review of examples taken from molecular epidemiology.

## Time-series Models

### Generalized Linear Autoregressive Moving Average (GLARMA) Models for Count Data (Poisson, Binomial, Negative Binomial)

- [Zeger, A regression model for time series of counts, 1988](https://doi.org/10.2307/2336303)
  - A classic paper discussing the problem of modelling time series of counts, with the famous example of U.S. Polio incidence data, now part of the `glarma` package.
- [Davis, Wang & Dunsmuir, Modeling Time Series of Count Data, 1999. In S Ghosh (ed.), *Asymptotics, Nonparametrics, and Time Series*, volume 158 of *Statistics Textbooks and Monographs*, pp. 63-114](https://doi.org/10.1201/9781482269772)
  - A theoretical paper discussing differences between parameter-driven and observation-driven state-space models, with many example analyses at the end.
- [Davis, Dunsmuir and Streett, Observation-driven models for Poisson counts, 2003](https://doi.org/10.1093/biomet/90.4.777)
  - A theoretical paper with an interesting example application to the Asthma dataset.
- [Dunsmuir & Scott, The `glarma` Package for Observation Driven Time Series Regression of Counts, 2015](https://doi.org/10.18637/jss.v067.i07)
  - The `glarma` package vignette with theory, code, and examples.

## Modeling ordinal data
### Proportional Odds Regression AKA Ordinal Regression AKA many other names

- [Rune Haubo B Christensen, Cumulative Link Models for Ordinal Regression with the `R` Package `ordinal`, 2018](https://cran.r-project.org/web/packages/ordinal/vignettes/clm_article.pdf)
  - The `ordinal` package vignette with theory, code, and examples. It's rather lengthy and extensive!

- [Peter McCullagh, Regression Models for Ordinal Data, 1980](https://doi.org/10.1111/j.2517-6161.1980.tb01109.x)
  - A foundational paper for the proportional odds model, relating it mathematically to the famoux Cox proportional hazards model.
  
- [Christopher Winship & Robert D. Mare, Regression Models With Ordinal Variables, 1984](https://doi.org/10.2307/2095465)
  - A foundational paper describing techniques to handle ordinal data especially aimed at eliminating bad practices in the sociology literature.
  
- [UCLA: Statistical Consulting Group., Ordinal Logistic Regression | R Data Analysis Examples, Accessed April 12, 2024](https://stats.oarc.ucla.edu/r/dae/ordinal-logistic-regression/)
  - A tutorial for ordinal logistic regression using `MASS` package. No matter if you use this package or `clm`, this tutorial is interesting as it addresses how to analyze the data before modeling, namely by checking the proportional odds assumption.


## Modeling proportions data (in the 0-1 interval)
### Beta regression

- Foundational papers
  - [Kieschnick & McCullough, *Regression analysis of variates observed on (0, 1): percentages, proportions and fractions*, 2003](https://doi.org/10.1191/1471082X03st053oa)
  - [Ferrari & Cribari-Neto, *Beta Regression for Modelling Rates and Proportions*, 2004](https://doi.org/10.1080/0266476042000214501)
    
- Regression tools
  - [Cribari-Neto & Zeilis, *Beta Regression in R*, 2010](https://doi.org/10.18637/jss.v034.i02)
    - The paper accompagnying the R package betareg
  - [Kubinec, *Ordered Beta Regression: A Parsimonious, Well-Fitting Model for Continuous Data with Lower and Upper Bounds*, 2021](https://doi.org/10.1017/pan.2022.20)
    - A paper proposing an alternative to the Zero-One Inflated Beta (ZOIB Model)
  
### Simplex Regression  
- [Zhang, Qiu & Shi, *simplexreg: An R Package for Regression Analysis of Proportional Data Using the Simplex Distribution*, 2016](https://doi.org/10.18637/jss.v071.i11)
  - Simplex Regression, an alternative to beta regression using the Simplex distribution. Incorporates both MLE and GEE techniques.
      
# Contact
- Visit [www.justinbelair.ca](https://www.justinbelair.ca/?utm_source=GitHub&utm_medium=reading_list&utm_campaign=footer) if you have any questions or need help with statistics.

![alt text](https://github.com/JB-Statistical-Consulting/biostatistics/blob/main/contact.png)
