---
abstract: |
    Visual areas are essential in transforming the raw luminous signal into
    a representation which efficiently conveys information about the
    environment. This process is constrained by various factors such as a
    wide variety of changes in the characteristics of the visual image but
    also by the necessity to be able to respond as quickly as possible to
    the incoming sensory stream, for instance to drive a movement of the
    eyes to the location of a potential danger. To achieve this, it is
    believed that the visual system takes advantage of a priori knowledge
    about the structure of visual information, such as the regularity in the
    shape and motion of visual objects. As such, the predictive processing
    framework offers a unified theory to explain many of the dynamical
    mechanisms which were progressively unveiled by decades of study in
    neurophysiology and psychophysics at the different levels of the visual
    system. However, we still lack a global normative approach unifying
    those mechanisms and we will review here some of the promising
    approaches which allow to explain the processing of visual information
    in the visual hierarchy. In particular, we will describe how Active
    Inference, that is predictive coding with the ability to actively sample
    the visual space, can provide a unified account of visual mechanisms
    from the sensory information to the generation of an appropriate action.
    Then, we will extend this paradigm to the case where information is
    distributed on a topography, such as is the case for retinotopically
    organized visual areas. In particular, we will compare such models in
    light of recent neurophysiological data showing the role of traveling
    waves in shaping visual processing. Finally, we will propose some lines
    of research to understand how the previous functional models may be
    implemented at the neural level. In particular, we will describe models
    of cortical processing in terms of prototypical micro-circuits. These
    allow to separate the different flows of information, from feed-forward
    prediction error to feed-back anticipation error. Still, the particular
    implementation of such a circuit is not known and we will review some
    possible implementations using Spiking Neural Networks.
author: Laurent Perrinet
author_info:
- affiliations:
  - 'Department of Something, University of Whatever'
  email: 'john.doe\@something.com'
  funders: Grant XXXXXXXX
  github: johndoe
  initials: JD
  name: John Doe
  orcid: 'XXXX-XXXX-XXXX-XXXX'
  twitter: johndoe
autoEqnLabels: False
autoSectionLabels: True
bibliography: 'Perrinet19PredictiveProcessing.bib'
category: 'XXX document category, included in docx and pptx metadata'
ccsDelim: ','
ccsLabelSep: '---'
ccsTemplate: $$i$$$$ccsLabelSep$$$$t$$
chapDelim: '.'
chapters: False
chaptersDepth: 1
codeBlockCaptions: False
cref: False
crossrefYaml: 'pandoc-crossref.yaml'
date: '2019-02-17'
date-meta: '2019-02-17'
description: |
    Book chapter proposal for "The Philosophy and Science of Predictive
    Processing" to be published by Bloomsbury
email: 'Laurent.Perrinet\@univ-amu.fr'
eqnLabels: arabic
eqnPrefix:
- 'eq.'
- 'eqns.'
eqnPrefixTemplate: $$p$$ $$i$$
figLabels: arabic
figPrefix:
- 'fig.'
- 'figs.'
figPrefixTemplate: $$p$$ $$i$$
figureTemplate: $$figureTitle$$ $$i$$$$titleDelim$$ $$t$$
figureTitle: Figure
institute: |
    Institut de Neurosciences de la Timone, CNRS / Aix-Marseille Université
    - Marseille, France
keywords:
- Vision
- Active Inference
lang: 'en-US'
lastDelim: ','
linkReferences: False
listingTemplate: $$listingTitle$$ $$i$$$$titleDelim$$ $$t$$
listingTitle: Listing
listings: False
lofTitle: |
    List of Figures
    ===============
lolTitle: |
    List of Listings
    ================
lotTitle: |
    List of Tables
    ==============
lstLabels: arabic
lstPrefix:
- 'lst.'
- 'lsts.'
lstPrefixTemplate: $$p$$ $$i$$
nameInLink: False
numberSections: True
pairDelim: ','
papersize: a4
rangeDelim: '\-'
refDelim: ','
refIndexTemplate: $$i$$$$suf$$
secHeaderTemplate: $$i$$$$secHeaderDelim$$$$t$$
secLabels: arabic
secPrefix:
- 'sec.'
- 'secs.'
secPrefixTemplate: $$p$$ $$i$$
sectionsDepth: '-1'
source: 'https://github.com/laurentperrinet/Perrinet19PredictiveProcessing/'
subfigGrid: False
subfigLabels: alpha a
subfigureChildTemplate: $$i$$
subfigureRefIndexTemplate: '$$i$$$$suf$$ ($$s$$)'
subfigureTemplate: '$$figureTitle$$ $$i$$$$titleDelim$$ $$t$$. $$ccs$$'
subject: 'XXX document subject, included in ODT, docx and pptx metadata'
tableEqns: False
tableTemplate: $$tableTitle$$ $$i$$$$titleDelim$$ $$t$$
tableTitle: Table
tblLabels: arabic
tblPrefix:
- 'tbl.'
- 'tbls.'
tblPrefixTemplate: $$p$$ $$i$$
thanks: XXX
title: |
    From the retina to action: Dynamics of predictive processing in the
    visual system
titleDelim: ':'
website: 'http://invibe.net/LaurentPerrinet'
---

<!--

https://en.wikipedia.org/wiki/YAML
https://learn-the-web.algonquindesign.ca/topics/markdown-yaml-cheat-sheet/
get https://zoteromusings.wordpress.com/tag/bibtex/


## some formatting tricks
Blah blah [@Atick92, pp. 33-35, 38-39 and *passim*] by Atick  [-@Atick92].
-->
<!--

https://lierdakil.github.io/pandoc-crossref/

hello $\LaTeX$ and hello $\tau_m=50 ms$

[@fig:label1;@fig:label2;...] or [@eq:euler] or [@tbl:label1;@tbl:label2;...] or @fig:label or @eq:label or @tbl:label

$$ \exp \pi = -1 $$ {#eq:euler}

See Equation [@eq:euler]

Here is some text.[^fn]

[^fn]: And the footnote!

http://lierdakil.github.io/pandoc-crossref/

TODO: move to https://greenelab.github.io/manubot-rootstock/

-->

1 Motivation : Role of dynamics in neural computations underlying visual processing {#sec:intro}
===================================================================================

Vision, the capacity of making sense of the luminous environment, is a
dynamic process. From its first stage, the retina, to the different
areas which help in forming a representation of the visual world knowing
its transformations as with the motion of a visual object but also to
sensory modifications, such as with eye movements. As such, visual
processing is not separable from the dynamics of the neural networks
involved in vision. To make sense of such a complex system, it has been
proposed that the organization of the visual system is such that it is
efficient [@Attneave54]. Such an ecological framework [@Atick92] allows
to explain many aspects of visual processing. Formalizing such
optimization strategies in probabilistic language, these may be
encompassed by the "Bayesian Brain" framework [@Knill04]

Such principles take different forms such as redundancy reduction
[@Barlow61], maximization of information transfer [@Linsker90] or
minimization of metabolic energy. However, it is possible to link these
different theories into a single framework, the Free-Energy Principle
(FEP) [@Friston10]. Key to this principle is the notion that, knowing
the processes that generated the visual image and the internal
generative model that allows its representation, predictive processes
will take advantage of *a priori* knowledge to form an optimal
representation of the image. Such an a priori knowledge is an explicit
(probabilistic) representation of the structure of the world. For
instance, an image which is composed of edges will be understood at a
higher level using the a priori knowledge of the link between any
individual edges to form a representation of the *contours* of visual
objects. In the time domain, the knowledge of the motion of visual
objects will help predict their future positions and to ultimately track
the different bits of motion.

However, there are limits to this efficiency. First, luminous
information can be noisy and ambiguous, such as in dim light conditions.
Second, neural networks have limited information transfer capacities and
always need some delay to convey and process information. In humans for
instance, the delay for the transmission of retinal information is
approx 80 ms, while the minimal latency to perform a motor action is
approximately an additional 50 ms. While this constrains a lot the
capacity of the visual system, we will take advantage of these delays to
better unravel visual processes as they unfold in time. In particular,
we will focus in this chapter in a fundamental constraint on the
dynamics of such predictive processes in the central nervous system.

Indeed, as an illustration, let's use the example of the recording of a
set of neural cells in some visual areas. Let's assume that recording
provides with an analog signal from which we may extract the analog
timings of spiking events for the population of cells. We may then chose
to display this data in a "raster plot", that is, showing the timing of
the spikes that each cell emitted. The time is thus relative to that of
the experimenter and is given thanks to an external clock. Moreover, the
plot is shown a posteriori, that is, after the recording of the spike
trains. This definition of an absolute time $t$ was introduced by Newton
and defines most of the laws of physics. Consistent with that, time
measures the speed (or "width") of physical transformations
(Anaximandre, Rovelli) In contrast, each neuron has no access to a
central clock but its response is controlled by the present distribution
of electro-chemical gradients on its membrane and its dynamical
properties. Such a notion of time is repeated for each neuron as this
network is mostly decentralized. Such an observation is essential in
understanding the principles guiding the organization of visual
processes. In particular, predictive processes can be only defined in
this interoceptive time, using only information at the present instant.

This chapter will review such dynamical predictive processing approaches
for vision at different scales of analysis, from the whole system to
intermediate representations and finally to neurons (following the
levels of analysis from [@Marr83]). First, we will apply the FEP to
vision as a normative approach. Extending this principle with the
capacity of actively sampling sensory input, we will define Active
Inference (AI) and its potential role in understanding vision, and also
behaviors such as eye movements (see sec. 2). Then, we will extend it to
understand how such processes may be implemented in retinotopic maps
(see sec. 3). In particular, we will show how such a model may explain a
visual illusion, the Flash-lag effect. This will then be compared with
neurophysiological data and try to understand the potential role of
traveling waves in shaping visual processing. Finally, we will review
possible implementations of such models in Spiking Neural Networks (see
sec. 4). In particular, we will review some models of elementary
micro-circuits and detail some potential rules for learning the
structure of their connections in an unsupervised manner. We will
conclude by synthesizing these results and their limit. In particular,
we will try to define an emerging notion for time as it appears in the
definition of predictive processes for visual processing.
<!--  what Dennett (2009) calls a “strange inversion of reasoning,”  -->

2 Active Inference and the "optimality" of vision {#sec:AI}
=================================================

To rephrase Wigner [@Wigner90], optimization principles seem the only
choice to understand "The Unreasonable Effectiveness of Vision in the
Natural World". However, trying to understand vision as an emergent
process from efficiency principle seems like a teleological principle in
which causation would be reversed [@Turkheimer19]. Still, it is one way
"by which we may seek to learn how things came to be, and to take their
places in the harmonious complexity of the world." [@DArcy-Thompson17,
p.XXX]. Putting this another way, it is not of scientific importance to
know if the brain is using explicitly such a principle (for instance
that some its part may use Bayes' rule), but rather that such a set of
rules offers a simpler explanation for the neural recordings which
reflect the processing occurring in this complex system [@Varoquaux19].
In this section, we will consider the visual system from the retina to
the oculomotor muscles as an organizational closure (Autopoeise /
maturama / varela). Then, we will follow basic principles of
self-organized behavior: namely, the imperative to minimize the entropy
of hidden states of the world and their sensory consequences.

2.1 Perceptions as hypotheses, Actions as experiments {#sec:perceptions-as-hypotheses-actions-as-experiments}
-----------------------------------------------------

As a first step, we will consider a simplistic agent that senses a
subset of the visual scene as its projection on the (log-)polar
retinotopic space. The agent has the ability to direct his gaze toward
any position in (visual) space using fast eye movements, saccades. As
the sensory system of our agent can actively sample the visual world, we
will explore the idea that saccadic eye movements are optimal
experiments, by which the agent seeks to confirm predictive models of
the hidden world. This is reminiscent of Helmholtz's definition of
perception [@vonHelmholtz1867] as hypothesis testing [@Gregory80]. This
provides a plausible model of visual search that can be motivated from
the basic principles of self-organized behavior [@Gibson79]: namely, the
imperative to minimize the entropy of hidden states of the world and
their sensory consequences. This imperative is met if agents sample
hidden states of the world efficiently. This efficient sampling of
salient information can be derived in a fairly straightforward way,
using approximate Bayesian inference and variational free-energy
minimization. One key ingredient to this process is the (internal)
representation of counterfactual predictions, that is, of the probable
consequences of possible hypothesis as they are realized into actions.
This augment the FEP of an agent such as to define Active Inference.

Using the SPM simulation environment [@SPM12], Friston and colleagues
[@Friston12] provide with simulations of the behavior of such an agent
which senses the image of a face, and knowing an internal model of their
structure. In modeling the agent, we clearly delineate the hidden
external state (the visual image, the actual position of the eye) from
the internal state of the agent. Those internal beliefs are linked by a
probabilistic dependency graph and evolve such as to minimize
variational free-energy. Applying the FEP to this generative model, this
translates (or compiles in computer science terms) to a set of
differential equations with respect to 1) the internal belief 2) the
counterfactual action. This action is the one which is expected to
reduce sensory surprise and is ultimately realized by an arc reflex.

Simulations of the resulting AI scheme reproduce sequential eye
movements that are reminiscent of empirically observed saccades and
provide some counterintuitive insights into the way that sensory
evidence is accumulated or assimilated into beliefs about the world. In
particular, knowing the localized image sensed on the retina, Saccades
will explore points of interests (eyes, mouth, nose) until an internal
representation of the whole image is made. This Active Inference (AI)
process allows to bridge the image in intrinsic (retinal) coordinates
with that extrinsic world coordinates which is prevalent in visual
perception. Interestingly, if one were to only look at the behavior of
this agent, this could be encompassed by a set of differential
equations, but that would miss the causal relationship with internal
variables as defined above. In particular, this model highlights a
solution to a common misconception about FEP as surprise minimization.
Indeed, if the agent was to close his eyes, the sensory surprise would
be minimal as one would then precisely expect a pitch-dark visual scene.
However, in the graph of dependencies which defines the agent, such a
counterfactual,(prospective) hypothesis would be highly penalized as it
would also be a priori known that such an action would not yield any
minimization of the surprise about the prospective visual scene.
Globally, it is therefore more ecological to keep eyes open to explore
the different parts of the visual scene.

2.2 Is there a neural implementation for AI? {#sec:is-there-a-neural-implementation-for-ai}
--------------------------------------------

As we have seen above, the agent that we have defined is simply ruled by
a set of differential equations. Technically, these equations are the
result of a generic approximation on the form of the internal
representation. In particular, such equations are simplified when using
the Laplace approximation, that is, when internal beliefs are
represented by multidimensional Gaussian probability distribution
functions. This holds true in all generality when transforming variables
in higher dimensions, such as is the case for generalized coordinates
[@Friston10generalized] which represent at any (present) time, the
Taylor expansion of the temporal trajectory of any variable. As a
consequence, the solution provided by the agent gives a plausible neural
implementation as a set of hierarchically organized linear / non-linear
equations [@Heeger17]. In particular these equations are the Kalman-Bucy
filtering solution which provides with a Bayes-optimal estimate of
hidden states and action in generalized coordinates of motion
[@Kalman60]. In particular, this solution generalizes the predictive
coding framework offered by [@Rao99] for explaining the processing
mechanisms in the primary visual cortex. Similarly to that model, the
dynamical evolution of activity at the different levels of the hierarchy
is governed by the balance in the integration of internal (past) beliefs
with (present) sensory information. In particular, the weights assigned
in information passing is based on the (inferred) precision of each
variable in the dependency graphed. This allow us to predict the
influence of the prior knowledge of the precision at a given level on
the final outcome.

The predictive power of the modeling of such an agent is important to
understand deviations from the median behavior within a population of
agents. For instance, there are acute differences in the smooth pursuit
eye movements (SPEM) observed in control and schizophrenic patients.
SPEM are distinct from saccades as those are voluntary eye movements
which aim at stabilizing the retinal image of a smoothly moving visual
object. For a target following the motion of a pendulum for instance,
the eye will produce a prototypical response to follow this predictable
target. Interestingly, schizophrenic agents tend to produce a different
pattern of SPEM when the pendulum is occluded on half cycles (for
instance as it passes behind an opaque cardboard on one side from the
midline). In general, SPEM may still follow the target, as it is
occluded (behind the cardboard) yet with a lower gain [@Barnes91]. As
the target reappears from behind the occluder, schizophrenic agents
engage more quickly to a SPEM response [@Avila06]. In [@Adams12], we
have modeled an agent which has the capability to smoothly follow a
moving object. This model allows in particular to understand most
prototypical SPEM as a Bayes-optimal solution to minimize surprise in
the perception / action loop implemented in the agent's dependency
graph.

Especially, by manipulating the a priori precision of internal beliefs
at the different levels of the hierarchical model, one could reproduce
different-classes of behaviors as evidenced by SPEM to classical
psychophysical stimuli. For the half-cycle occluded pendulum, [@Adams12]
found that manipulating the post-synaptic gain of predictive neurons
reproduced these observed behaviors in schizophrenia and control
populations. Such a difference in the balance of information flow could
have for instance a genetic origin in the expression of this gain and
vicariously in the behavior of this population. Importantly, such a
method thus allows to perform quantitative predictions and such
applications of computational neuroscience seem particularly relevant
for a better understanding of the diversity of behaviors in the human
population (see for instance [@Karvelis18autistic; @Kent19]).

2.3 Introducing delays in AI: dynamics of predictive processing {#sec:introducing-delays-in-ai-dynamics-of-predictive-processing}
---------------------------------------------------------------

![Figure 1: ***(A)*** This figure reports the response of predictive
processing during the simulation of pursuit initiation, using a single
rightward (positive) sweep of a visual target, while compensating for
sensory motor delays. Here, we see horizontal excursions of oculomotor
angle. One can see clearly the initial displacement of the target that
is suppressed by action after a few hundred milliseconds. Additionally,
we illustrate the effects of sensorimotor delays on pursuit initiation
(red lines) in relation to compensated (optimal) active inference. Under
pure sensory delays (blue line), one can see clearly the delay in
sensory predictions, in relation to the true inputs. With pure motor
delays (blue line) and with combined sensorimotor delays (black line)
there is a failure of optimal control with oscillatory fluctuations in
oculomotor trajectories, which may become unstable. ***(B)*** This
figure reports the simulation of smooth pursuit when the target motion
is hemi-sinusoidal, as would happen for a pendulum that would be stopped
at each half cycle left of the vertical (broken black lines in the
lower-right panel). We report the horizontal excursions of oculomotor
angle. The generative model used here has been equipped with a second
hierarchical level that contains hidden states, modeling latent periodic
behavior of the (hidden) causes of target motion (states not shown here)
With this addition, the improvement in pursuit accuracy apparent at the
onset of the second cycle of motion is observed, similar to
psychophysical experiments
[@Barnes91].](PerrinetAdamsFriston14anticip.png){#fig:PerrinetAdamsFriston14}

An interesting perspective to study the role of such dynamics in
cognition is to extend this model to a more realistic description of
naturalistic constraints faced by the visual system. Indeed, the central
nervous system has to contend with axonal delays, both at the sensory
and the motor levels. For instance, in the human visuo-oculomotor
system, it takes approximately $\tau_s=50 ms$ for the retinal image to
reach the visual areas implicated in motion detection, and a further
$\tau_m = 50 ms$ to reach the oculomotor muscles and actually realize
action. One challenge for modeling is to understand eye movements using
AI as a problem of optimal motor control under axonal delays. Let's take
the example of a tennis player trying to intercept a passing-shot ball
at a (conservative) speed of $20 m/s$. The position sensed on the
retinal space corresponds to the instant when its image formed on the
photoreceptors of the retina and reaches our hypothetical motion
perception area behind: At this instant, the sensed physical position is
in fact lagging $1 m$ behind, that is, approximately at a significative
eccentricity of $45$ degrees. However, the position at the moment of
emitting the motor command will be also $45$ degrees *ahead* of its
present physical position in visual space. As a consequence, note that
if the player's gaze is directed to the ball at its **present**
position, it is in anticipatory fashion of the position of the ball
during the (counterfactual) transport of this position during the
sensory delay. Alternatively, optimal control may direct action (future
motion of the eye) to the expected position when motor commands reach
the periphery (muscles). Such an example illustrates that even with such
a small delay, the visual system is faced with ambiguous choices. This
ambiguity is obviously an interesting challenge for modeling predictive
processing in the visual system.

Extending the modeling framework of [@Adams12] for SPEM, it was observed
in [@PerrinetAdamsFriston14] that representing hidden states in
generalized coordinates provides a simple way of compensating for both
these delays. A novelty of this approach is to include the delays in the
dynamics at the present time by taking advantage of generalized
coordinates to create a linear operator on those variables to travel
back and forth in time with any delay $\tau$. It is simply formed by
using a Taylor expansion of the successive orders in the generalized
coordinates which takes this form in matrix form and thus simply by
taking the exponential matrix form. Applying such an operator to the FEM
generates a slightly different and more complicated formulation.
However, it is important to note that to compensate for delays, there is
no change in the structure of the network but just in how the synaptic
weights are tuned (similar to what we had done in the first part):
"Neurobiologically, the application of delay operators just means
changing synaptic connection strengths to take different mixtures of
generalized sensations and their prediction errors."
[@PerrinetAdamsFriston14, sec 3.1]. In particular, when the agent has
some belief about these delays, it can Bayes-optimally integrate
internal belief. Such a behavior is still regulated by the same type of
internal equation.

First, The efficacy of this scheme will be illustrated using neuronal
simulations of pursuit initiation responses, with and without
compensation. Figure fig. 1, A reports the conditional estimates of
hidden states and causes during the simulation of pursuit initiation,
using a single rightward (positive) sweep of a visual target, while
compensating for sensory motor delays. Here, we see horizontal
excursions of oculomotor angle and the angular position of the target in
an intrinsic frame of reference. This is effectively the distance of the
target from the centre of gaze and reports the spatial lag of the target
that is being followed (solid red line). One can see clearly the initial
displacement of the target that is suppressed after a few hundred
milliseconds. One can see the motion that elicits following responses
and the oculomotor excursion that follows with a short delay of about
64ms. This figure also illustrates the effects of sensorimotor delays on
pursuit initiation (red lines) in relation to compensated (optimal)
active inference. Under pure sensory delays (top row), one can see
clearly the delay in sensory predictions, in relation to the true
inputs. Of note here is the failure of optimal control with oscillatory
fluctuations in oculomotor trajectories, which become unstable under
combined sensorimotor delays.

Interestingly, this model extends to more complex stimulation
trajectories. In particular, it is has been shown that gaze will be
directed at the present physical position of the target (thus in
anticipatory fashion) if that target follows a smooth trajectory (such
as pendulum). More striking, this is also true if the trajectory is
*predictable*, for instance for a pendulum behind a static occluder
[@Barnes91]. Figure fig. 1, B reports the simulation of smooth pursuit
when the target motion is hemi-sinusoidal, as would happen for a
pendulum that would be stopped at each half cycle, left of the vertical
(broken black lines). The generative model has been equipped with a
second hierarchical level that contains hidden states, modeling latent
periodic behavior of the (hidden) causes of target motion of the
pendulum. With this addition, the improvement in pursuit accuracy
apparent at the onset of the second cycle of motion is observed, similar
to psychophysical experiments [@Barnes91]. One can see clearly the
initial displacement of the target that is suppressed after a few
hundred milliseconds. With this addition, the improvement in pursuit
accuracy apparent at the onset of the second cycle of motion is
reinstated. This is because the model has an internal representation of
latent causes of target motion that can be called upon even when these
causes are not expressed explicitly in the target trajectory. A
particular advantage of this model is that it provides a solution for
the integration of past and future information while still being
governed by online differential equations. This therefore implements
some form of Bayes-optimal temporal memory.

2.4 summary {#sec:summary}
-----------

XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX laws of
vision: perspective, gravity, rebounds of a ball - resolves Gestalt laws
by seing it as conflicts between separate contexts time to awareness /
explanatory gap

3 Predictive processing on visual maps {#sec:maps}
======================================

3.1 fle {#sec:fle}
-------

![Figure 2: ME. In [@Khoei17], we propose a model of predictive
processing in a topographic map. A) the model consists of a two-layered
map: an input source target integrates information from visual sensors.
This map represents both position and velocity, and we represent here a
representation for a mono-dimensional variable. Using this belief (as
represented here by the probability distribution function), it is
possible to project this information to a second target layer that
integrates information knowing a compensation for the delay. In that
particular case, speed is positive and thus information of position is
transported to the right. B) Response of a model compensating for a
100ms delay to a moving dot. Representation of the inferred probability
of position and velocity with delay compensation as a function of the
iterations of the model (time). Darker colors denote higher
probabilities, while a light color corresponds to an unlikely
estimation. In particular, we focus on three particular epochs along the
trajectory, corresponding to the standard, flash initiated and
terminated cycles. The timing of these epochs flashes are indicated by
dashed vertical lines. In dark, the physical time and in green the
delayed input knowing $\tau=100 ms$. See text for an interpretation of
the result.](Khoei17.png){#fig:Khoei17}

The flash-lag effect (FLE) is a visual illusion which is popular for its
generality and simplicity. In its original form [@MacKay58], the
observer is asked to always fixate on a central cross in the screen. A
dot traverses the screen with a constant, horizontal motion. As it
reaches the center of the screen, another dot is briefly flashed just
below the moving dot. While they are vertically perfectly aligned, the
flashed dot is perceived as lagging the moving dot. This visual illusion
saw a resurgence of scientific interest with the motion extrapolation
model [@Nijhawan02; @Nijhawan09]. However, other models such as
differential latency of postdiction (Eagleman) were also proposed, such
that it is yet not clear what is the neural substrate of the FLE.

Activity in both models shows three different phases. First, there is a
rapid build-up of the precision of the target after the first appearance
of the moving dot (at $t=300 ms$). Consistently with the Fröhlich effect
[@Jancke10], the beginning of the trajectory is seen ahead of its
physical position. During the second phase, the moving dot is correctly
tracked as both its velocity and position are correctly inferred. In the
source layer, there is no extrapolation and the trajectory follows the
delayed trajectory of the dot (green dotted line). In the target layer,
motion extrapolation correctly predicts the position at the present time
and the position follows the actual physical position of the dot (black
dotted line) fig. 2. Finally, the third phase corresponds to motion
termination. The moving dot disappears and the corresponding activity
vanishes in the source layer at $t=900 ms$. However, between $t=800 ms$
and $t=900 ms$, the dot position was extrapolated and predicted ahead of
the terminal position. At $t=900 ms$, while motion information is
absent, the position information is still transiently consistent and
extrapolated using a broad, centered prior distribution of speeds.
Although it is less precise, this position of the dot at flash
termination is therefore not perceived as leading the flash.

The model that we used for the FLE can be used with any image. In
particular, a single flashed dot evokes an expanding then contracting
isotropic activity while a moving dot may produce a soliton-like wave
which may traverse an occlusion [@Khoei13]. More generally, this model
may be described as a simplification of the Navier Stokes equation of
fluid dynamics using the advection term. As such, solutions to these
equations are typically waves which are travelling on the retinotopic
map. A particular feature of these maps is that these include an
amplification term for rectilinear motions. As a consequence, once an
object begins to be tracked, its position is predicted in the future,
such that position and velocity are better estimated. On the contrary, a
dot which is moving on an unpredictable trajectory is explained away by
the system. This explains some of the non-linear, binary behaviors
explained by this model. It is of particular interest at this point to
understand if such a model extends to other stimuli or if we can precise
its neural correlate.

XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX hindsight,
parodiction, sort of adaption

3.2 neural correlate of apparent motion {#sec:neural-correlate-of-apparent-motion}
---------------------------------------

When two stationary dots are flashed at close successive positions and
times, observers may experience a percept of motion. This transforms the
presentation of a discrete pattern into a continuous one. This visual
illusion is called apparent motion and can persist over a relatively
long range (superior to the characteristic size of the RF of a V1
neuron), and is called long-range Apparent Motion (lrAM). Similarly to
the study above for the FLE, it is believed that this illusion can be
explained by predictive processes. Due to the dynamical characteristics
of lrAM, a neural implementation of this illusion may consist in the
propagation of visual information through intra-cortical interactions.
In particular, these lateral interactions may evoke waves of activity in
V1 which may modulate the integration of the sensory information coming
from thalamocortical connections. An interesting prospect is thus to
record neural activity during the presentation of the lrAM stimulus.
This allows to quantitatively assess why the superposition of two dots
as in lrAM is "more" than the sum of the two dots in isolation.

In this study, we used VSDI to record the activity of the primary visual
cortex (V1) of awake macaque monkeys. Is there any difference between
the response to the single dot and that to the two dots? Indeed VSD
recordings allow to record the activity of populations of neurons which
are approx at the scale of a cortical column. Also, the recorded
response is rapid enough to capture the dynamics of the lrAM stimulus.
These recordings show that as the evoked activity of the second stimulus
reaches V1, a cortical suppressive wave propagates toward the
retinolopic wave evoked by the first dot. This was put in evidence by
statistically comparing the response of the brain to the response of the
two dots in isolation. In particular, we found that the activity for the
brain stimulus was more precise, suggesting that such suppressive wave
could serve as predictive processing step to be read-out in upstream
cortical areas.

In particular, we found that the activity that we recorded fitted well
with a mean-field model using a dynamical gain control. Qualitatively,
this model reproduced the propagation of activity on the cortex.
Importantly, this model allowed to show that the observed activity was
best fitted when the speed of lateral connections within the mean-field
was about 1 m/s, a propagation speed which is of the order of that
measured for intra-cortical connections in the primary visual cortex. A
more functional (probabilistic) model also showed that the cortical
suppressive wave allowed to disambiguate the stimulus by explaining away
(that is, suppressing) ambiguous alternatives. As a consequences, 1)
lateral interactions are key to generate traveling waves on the surface
of the cortex and 2) these waves help disambiguate the input stimulus.
This corresponds to the implementation of a predictive process using on
a priori knowledge of smoothly-moving visual objects.

3.3 summary {#sec:summary-1}
-----------

XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX

4 Open problems in the science of visual predictive processing {#sec:spikes}
==============================================================

XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX

4.1 The role of cortical waves in shaping the dynamic processing of visual information {#sec:the-role-of-cortical-waves-in-shaping-the-dynamic-processing-of-visual-information}
--------------------------------------------------------------------------------------

XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX single trials [@Muller14] review in
[@Muller18] XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX

XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX

4.2 b XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX {#sec:b-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx}
-----------------------------------------------------------------------------

XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX

XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX

4.3 c XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX {#sec:c-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx-xxx}
-----------------------------------------------------------------------------

XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX

XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX XXX
XXX XXX XXX XXX XXX XXX XXX XXX XXX

5 Summary and conclusions {#sec:summary-and-conclusions .unnumbered}
=========================
