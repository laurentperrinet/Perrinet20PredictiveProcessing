---
abstract: |
    Visual areas are essential in transforming the raw luminous signal into
    a representation which efficiently conveys information about the
    environment. This process is constrained by various factors such as a
    wide variety of changes in the characteristics of the visual scene but
    also by the necessity to be able to respond as quickly as possible to
    the incoming sensory stream, for instance to drive a movement of the
    eyes to the location of a potential danger. Decades of study in
    neurophysiology and psychophysics at the different levels of vision have
    shown that this system takes advantage of a priori knowledge about the
    structure of visual information, such as the regularity in the shape and
    motion of visual objects. As such, the predictive processing framework
    offers a unified theory to explain many visual mechanisms. However, we
    still lack a global normative approach unifying those dynamical
    mechanisms and we will review here some of promising approaches which
    allow to explain the processing of visual information in the visual
    hierarchy. First, we will describe Active Inference, that is predictive
    coding with the ability to actively sample the visual space. Then, we
    will extend this paradigm to the case where information is distributed
    on a topography, such as is the case for retinotopically organized
    visual areas. In particular, we will compare such models in light of
    recent neurophysiological data showing the role of traveling waves in
    shaping visual processing. Finally, we will propose some lines of
    research to understand how these functional models may be implemented at
    the neural level. In particular, we will describe potential models of
    cortical processing in terms of prototypical micro-circuits. These allow
    to separate the different flows of information, from feed-forward
    prediction error to feed-back anticipation error. Still, the design of
    such a circuit is still not known and we will review some possible
    implementations using Spiking Neural Networks.
author: Laurent Perrinet
author_info:
- affiliations:
  - 'Institut de Neurosciences de la Timone, CNRS / Aix-Marseille Université'
  email: 'laurent.perrinet\@univ-amu.fr'
  funders: Grant XXXXXXXX
  github: laurentperrinet
  initials: LuP
  name: Laurent U Perrinet
  orcid: '0000-0002-9536-010X'
  twitter: laurentperrinet
autoEqnLabels: False
autoSectionLabels: True
bibliography: 'Perrinet19PredictiveProcessing.bib'
category: 'XXX document category, included in docx metadata'
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
- Topography
- Spiking Neural Networks
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
thanks: XXX thanks XXX
title: |
    From the retina to action: Dynamics of predictive processing in the
    visual system
titleDelim: ':'
website: 'https://laurentperrinet.github.io/'
---

<!--

https://en.wikipedia.org/wiki/YAML
https://learn-the-web.algonquindesign.ca/topics/markdown-yaml-cheat-sheet/
get https://zoteromusings.wordpress.com/tag/bibtex/


## some formatting tricks
Blah blah [@Atick92, pp. 33-35, 38-39 and *passim*] by Atick  [-@Atick92].


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

1 Motivation: Role of dynamics in the neural computations underlying visual processing {#sec:intro}
======================================================================================

Vision, the capacity of making sense of the luminous environment, is a
highly complex process which is still out of reach for most computers.
Indeed, such algorithms can learn complex categorization tasks on
precise datasets but are easily outperformed by an infant when it comes
to a naturalistic, flexible and generic context. As a matter of fact,
the most surprising fact about vision is the ease with which sighted
persons may perform these abilities: It comes for granted while it is
largely a self-organized process and using a low metabolic cost. As a
consequence, and to rephrase Wigner [@Wigner90], "the Unreasonable
Effectiveness of Vision in the Natural World" invites us to focus on
this cognitive ability for a better understanding of the brain in
general. Indeed, studying vision allows to span from low-level feats
such as unconscious inferences (detecting and reading a printed
character, for instance) to higher capacities such as the interpretation
of complex scenes with respect to some cognitive context. Furthermore,
vision also allows for prospective predictions such as those revealed
during mental imagery - and is a basic ground-stone for one's
creativity, or *imagination*.

Anatomically, visual processing is a dynamical process implemented by
dynamics of the hierarchy of neural networks involved in that process,
from its first stage, the retina, to the different areas which help in
forming a representation of the visual world. To make sense of such a
complex system, it has been proposed that the organization of the visual
system is such that it is efficient [@Attneave54]. This ecological
approach [@Atick92] allows to explain many aspects of visual processing.
Such principles take different forms such as redundancy reduction
[@Barlow61], maximization of information transfer [@Linsker90] or
minimization of metabolic energy. Visual representations should handle
geometrical transformations (such as the motion of a visual object) but
also sensory modifications, such as with eye movements. Formalizing such
optimization strategies in probabilistic language, these may be
encompassed by the "Bayesian Brain" framework [@Knill04]. Moreover, it
is possible to link these different theories into a single framework,
the Free-Energy Principle (FEP) [@Friston10] and is crucial to study the
philosophy and science of predictive processes. Key to this principle is
the notion that, knowing the processes that generated the visual image
and the internal generative model that allows its representation,
predictive processes will take advantage of *a priori* knowledge to form
an optimal representation of the image. This knowledge constitutes an
explicit (probabilistic) representation of the structure of the world.
For instance, an image which is composed of edges will be understood at
a higher level using the a priori knowledge of the link between any
individual edges to form a representation of the *contours* of visual
objects. In the time domain, the knowledge of the motion of visual
objects will help predict their future positions and to ultimately track
the different bits of motion, but also to represent contours invariantly
to this motion.

However, there are limits to this efficiency. First, luminous
information can be noisy and ambiguous, such as in dim light conditions.
Second, neural networks have limited information transfer capacities and
always need some delay to convey and process information. In humans for
instance, the delay for the transmission of retinal information is
approx 80 ms, while the minimal latency to perform a motor action is
approximately an additional 50 ms. While this constrains a lot the
capacity of the visual system, we will herein take advantage of these
delays to better unravel visual processes as they unfold in time. In
particular, we will focus in this chapter in a fundamental constraint on
the dynamics of such predictive processes in the central nervous system
as they unroll with the passage of time.

Indeed, as an illustration, let's use the example of the recording of a
set of neural cells in some visual areas. Let's assume that these
recordings provide with an analog signal from which we may extract the
analog timings of spiking events for the population of cells. We may
then chose to display this data in a "raster plot", that is, showing the
timing of the spikes that each cell emitted. Time is thus relative to
that of the experimenter and is given thanks to an external clock: It is
shown a posteriori, that is, after the recording. This definition of an
absolute time was first formalized by Newton and now defines most of the
laws of physics as an external parameter. In contrast, each neuron has
no access to a central clock: its response is solely controlled by the
*present* distribution of electro-chemical gradients on its membrane and
its dynamical properties. Such a notion of time is local to each neuron:
the network is asynchronous (that is, timing is decentralized).
Moreover, this local notion of (processing) time is *a priori* disjoint
from the external time that this analog signal may represent. Such an
observation is essential in understanding the principles guiding the
organization of visual processes. In particular, a neural theory of
predictive processes can be only defined in this interoceptive time,
using only locally available information at the present instant.
<!-- Consistent with that, time measures the speed (or "width") of physical transformations (Anaximandre, Rovelli) -->

This chapter will review such dynamical predictive processing approaches
for vision at different scales of analysis, from the whole system to
intermediate representations and finally to neurons (following in a
decreasing order the levels of analysis from [@Marr83]). First, we will
apply the FEP to vision as a normative approach. Extending this
principle with the capacity of actively sampling sensory input, we will
define Active Inference (AI) and its potential role in understanding
vision, and also behaviors such as eye movements (see sec. 2). Then, we
will extend it to understand how such processes may be implemented in
retinotopic maps (see sec. 3). In particular, we will show how such a
model may explain a visual illusion, the Flash-lag effect. This will
then be compared with neurophysiological data. Finally, we will review
possible implementations of such models in Spiking Neural Networks (see
sec. 4). In particular, we will review some models of elementary
micro-circuits and detail some potential rules for learning the
structure of their connections in an unsupervised manner. We will
conclude by synthesizing these results and their limit. In particular,
we will try to define an emerging notion for time as it appears in the
definition of predictive processes for visual processing.
<!-- what Dennett (2009) calls a “strange inversion of reasoning,” and we will try to understand the potential role of traveling waves in shaping visual processing-->

2 Active Inference and the "optimality" of vision {#sec:AI}
=================================================

Optimization principles seem the only choice to understand "The
Unreasonable Effectiveness of Vision in the Natural World". However,
trying to understand vision as an emergent process from efficiency
principle seems like a teleological principle in which causation would
be reversed [@Turkheimer19]. Still, the "use of the teleological
principle is but one way, not the whole or the only way, by which we may
seek to learn how things came to be, and to take their places in the
harmonious complexity of the world." [@DArcy-Thompson17, chap. 1].
Putting this another way, it is not of scientific importance to know if
the brain is using explicitly such a principle (for instance that some
its part may use Bayes' rule), but rather that such a set of rules
offers a simpler explanation for the neural recordings by shedding light
on processes occurring in this complex system [@Varoquaux19]. We will
follow basic principles of self-organized behavior: namely, the
imperative to minimize the entropy of hidden states of the world and
their sensory consequences.
<!-- In this section, we will consider the visual system from the retina to the oculomotor muscles as an organizational closure (Autopoeise / maturama / varela). Then, w -->

2.1 Perceptions as hypotheses, Actions as experiments {#sec:perceptions-as-hypotheses-actions-as-experiments}
-----------------------------------------------------

As a first step, we will consider a simplistic agent that senses a
subset of the visual scene as its projection on the (log-polar)
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
salient information can be derived using approximate Bayesian inference
and variational free-energy minimization [@Friston10]. One key
ingredient to this process is the (internal) representation of
counterfactual predictions, that is, of the probable consequences of
possible hypothesis as they would be realized into actions. This augment
the FEP modeling of an agent such as to define Active Inference (AI).

Using the SPM simulation environment [@SPM12], Friston and colleagues
[@Friston12] provide with simulations of the behavior of such an agent
which senses the image of a face, and knowing an internal model of their
structure. In modeling the agent, they clearly delineate the hidden
external state (the visual image, the actual position of the eye) from
the internal state of the agent. Those internal beliefs are linked by a
probabilistic dependency graph and applying the FEP to this generative
model, this translates (or compiles in computer science terms) to a set
of differential equations with respect to 1) the internal belief 2) the
counterfactual action. This action is the one which is expected to
reduce sensory surprise and is ultimately realized by an arc reflex.

Simulations of the resulting AI scheme reproduce sequential eye
movements that are reminiscent of empirically observed saccades and
provide some counterintuitive insights into the way that sensory
evidence is accumulated or assimilated into beliefs about the world. In
particular, knowing the localized image sensed on the retina, Saccades
will explore points of interests (eyes, mouth, nose) until an internal
representation of the whole image is made. This AI process allows to
bridge the image in intrinsic (retinal) coordinates with extrinsic world
coordinates which are prevalent in visual perception. Interestingly, if
one were to only look at the behavior of this agent, this could be
encompassed by a set of differential equations, but that would miss the
causal relationship with internal variables as defined above. In
particular, this model highlights a solution to a common misconception
about FEP as surprise minimization. Indeed, if the agent was to close
his eyes, the sensory surprise would be minimal as one would then
precisely expect a pitch-dark visual scene. However, in the graph of
dependencies which defines the agent, such a counterfactual,
(prospective) hypothesis would be highly penalized as it would also be a
priori known that such an action would not yield a minimization of the
surprise about the visual scene. Globally, it is therefore more
ecological to keep eyes open to explore the different parts of the
visual scene.

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
filtering solution [@Kalman60] which provides with a Bayes-optimal
estimate of hidden states and action in generalized coordinates of
motion. This generalizes the predictive coding framework offered by
[@Rao99] for explaining the processing mechanisms in the primary visual
cortex. Similarly to that model, the dynamical evolution of activity at
the different levels of the hierarchy is governed by the balance in the
integration of internal (past) beliefs with (present) sensory
information. In particular, the weights assigned in information passing
is based on the (inferred) precision of each variable in the dependency
graph. This allow us to predict the influence on the final outcome of
the prior knowledge of precision at any given level.

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
engage more quickly to a SPEM response [@Avila06]. [@Adams12] modeled an
agent which has the capability to smoothly follow a moving object. This
model allows in particular to understand most prototypical SPEM as a
Bayes-optimal solution to minimize surprise in the perception / action
loop implemented in the agent's dependency graph.

Especially, by manipulating the a priori precision of internal beliefs
at the different levels of the hierarchical model, one could reproduce
different-classes of SPEM behaviors to classical psychophysical stimuli.
For the half-cycle occluded pendulum, [@Adams12] found that manipulating
the post-synaptic gain of predictive neurons reproduced these observed
behaviors in schizophrenia and control populations. Such a difference in
the balance of information flow could have for instance a genetic origin
in the expression of this gain and vicariously in the behavior of this
population. Importantly, such a method thus allows to perform
quantitative predictions and such applications of computational
neuroscience seem particularly relevant for a better understanding of
the diversity of behaviors in the human population (see for instance
[@Karvelis18autistic; @Kent19]).

2.3 Introducing delays in AI: dynamics of predictive processing {#sec:introducing-delays-in-ai-dynamics-of-predictive-processing}
---------------------------------------------------------------

![Figure 1: **(A)** This figure reports the response of predictive
processing during the simulation of pursuit initiation, using a single
sweep of a visual target, while compensating for sensory motor delays.
Here, we see horizontal excursions of oculomotor angle (dark blue line).
One can see clearly the initial displacement of the target that is
suppressed by action after a few hundred milliseconds. Additionally, we
illustrate the effects of assuming wrong sensorimotor delays on pursuit
initiation. Under pure sensory delays (blue dotted line), one can see
clearly the delay in sensory predictions, in relation to the true
inputs. With pure motor delays (light red dashed line) and with combined
sensorimotor delays (light red line) there is a failure of optimal
control with oscillatory fluctuations in oculomotor trajectories, which
may become unstable. **(B)** This figure reports the simulation of
smooth pursuit when the target motion is hemi-sinusoidal, as would
happen for a pendulum that would be stopped at each half cycle left of
the vertical (broken black lines in the lower-right panel). We report
the horizontal excursions of oculomotor angle. The generative model used
here has been equipped with a second hierarchical level that contains
hidden states, modeling latent periodic behavior of the (hidden) causes
of target motion. With this addition, the improvement in pursuit
accuracy apparent at the onset of the second cycle of motion is observed
(light shaded area), similar to psychophysical experiments
[@Barnes91].](figures/PerrinetAdamsFriston14anticip.svg){#fig:PerrinetAdamsFriston14}

An interesting perspective to study the role of such dynamics in
cognition is to extend this model to a more realistic description of
naturalistic constraints faced by the visual system. Indeed, the central
nervous system has to contend with axonal delays, both at the sensory
and the motor levels. For instance, in the human visuo-oculomotor
system, it takes approximately 50 ms for the retinal image to reach the
visual areas implicated in motion detection, and a further 50 ms to
reach the oculomotor muscles and actually realize action. One challenge
for modeling is to understand eye movements using AI as a problem of
optimal motor control under axonal delays. Let's take the example of a
tennis player trying to intercept a passing-shot ball at a
(conservative) speed of 20 m/s. The position sensed on the retinal space
corresponds to the instant when the image was formed on the
photoreceptors of the retina and until it reaches our hypothetical
motion perception area. At this instant, the sensed physical position is
in fact lagging 1 meter behind, that is, approximately at an
eccentricity of 45 degrees. However, the position at the moment of
emitting the motor command will be also 45 degrees *ahead* of its
present physical position in visual space. As a consequence, note that
if the player's gaze is directed to the ball at its **present**
position, it is in anticipatory fashion of the position of the ball
during the (counterfactual) transport of this position during the
sensory delay. Alternatively, optimal control may direct action (future
motion of the eye) to the expected position when motor commands reach
the periphery (muscles). Such an example illustrates that even with such
a small delay, the visual system is faced with significative
perturbations leading to ambiguous choices. This ambiguity is obviously
an interesting challenge for modeling predictive processing in the
visual system.

Extending the modeling framework of [@Adams12] for SPEM, it was observed
in [@PerrinetAdamsFriston14] that representing hidden states in
generalized coordinates provides a simple way of compensating for both
delays. A novelty of this approach is to include the delays in the
dynamics by taking advantage of generalized coordinates. Technically,
this defines a linear operator on those variables to travel back and
forth in time with any delay. Applying such an operator to the FEM
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
using a simple sweep of a visual target, while compensating for sensory
motor delays. Here, we see horizontal excursions of oculomotor angle
(blue line) and the angular position of the target (dashed black line).
One can see clearly the initial displacement of the target that is
suppressed after a few hundred milliseconds. This figure also
illustrates the effects of sensorimotor delays on pursuit initiation
(red lines) in relation to compensated (optimal) active inference. Under
pure sensory delays (dotted line), one can see clearly the delay in
sensory predictions, in relation to the true inputs. Of note here is the
failure of optimal control with oscillatory fluctuations in oculomotor
trajectories, which become unstable under combined sensorimotor delays.

Interestingly, this model extends to more complex stimulation
trajectories. In particular, it is has been shown that gaze will be
directed at the present physical position of the target (thus in
anticipatory fashion) if that target follows a smooth trajectory (such
as a pendulum). More striking, this is also true if the trajectory is
*predictable*, for instance for a pendulum behind a static occluder
[@Barnes91]. Figure fig. 1, B reports the simulation of smooth pursuit
when the target motion is hemi-sinusoidal, as would happen for a
pendulum that would be stopped at each half cycle, left of the vertical
(dashed black line). The generative model has been equipped with a
second hierarchical level that contains hidden states, modeling latent
periodic behavior of the (hidden) causes of target motion of the
pendulum. One can see clearly the initial displacement of the target
that is suppressed after a few hundred milliseconds (pink shaded area).
The improvement in pursuit accuracy is apparent at the onset of the
second cycle of motion is observed, similar to psychophysical
experiments [@Barnes91]. This is because the model has an internal
representation of latent causes of target motion that can be called upon
even when these causes are not expressed explicitly (occluded) in the
target trajectory. A particular advantage of this model is that it
provides a solution for the integration of past and future information
while still being governed by online differential equations. This
therefore implements some form of Bayes-optimal temporal memory.

2.4 summary {#sec:summary}
-----------

To sum up, we have shown here that a full visual perception / action
cycle could be understood as a predictive process unnder the Active
Inference framework. In particular, we have shown that such models could
reproduce the dynamics observed in eye movements, in particular when
introducing realistic constraints such as sensory-motor delays. Further
models should allow for the introduction of even more complex structural
constraints such as the physical laws governing the motion of visual
objects such as an *a priori* bias [@Damasse18], gravity or external
cues [@Kowler14]. This may help synthesize most laws governing the
organization of perception, as formalized in the Gestalt theory.

3 Predictive processing on visual maps {#sec:maps}
======================================

While we have shown the role of predictive processing at a macroscopic
scale, is there any evidence for such processes in visual space?

3.1 The flash-lag effect as evidence for predictive processing in topographic maps {#sec:the-flash-lag-effect-as-evidence-for-predictive-processing-in-topographic-maps}
----------------------------------------------------------------------------------

![Figure 2: In [@KhoeiMassonPerrinet17], we propose a model of
predictive processing in a topographic map. **(A)** the model consists
of a two-layered map: an input source target integrates information from
visual sensors. This map represents both position and velocity, and we
display here a projection on a single spatial dimension. Using this
belief (as represented here by the probability distribution function),
it is possible to project this information to a second target layer that
integrates information knowing a compensation for the delay. In that
particular case, speed is positive and thus information of position is
transported to the right. **(B)** Response of a model compensating for a
100 ms delay to a moving dot. Representation of the inferred probability
of position and velocity with delay compensation as a function of the
iterations of the model (time). Darker colors denote higher
probabilities, while a light color corresponds to an unlikely
estimation. In particular, we focus on three particular epochs along the
trajectory, corresponding to the standard, flash initiated and
terminated cycles. The timing of these epochs flashes are indicated by
dashed vertical lines. In dark, the physical time and in lighter green
the delayed input knowing a delay of 100 ms. See text for an
interpretation of the
results.](figures/KhoeiMassonPerrinet17.svg){#fig:KhoeiMassonPerrinet17}

The flash-lag effect (FLE) is a visual illusion which is popular for its
generality and simplicity. In its original form [@MacKay58], the
observer is asked to keep fixating on a central cross in the screen
while a dot traverses the screen with a constant, horizontal motion. As
it reaches the center of the screen, another dot is briefly flashed just
below the moving dot. While they are vertically perfectly aligned, the
flashed dot is perceived as lagging the moving dot. This visual illusion
saw a resurgence of scientific interest with the motion extrapolation
model [@Nijhawan02; @Nijhawan09]. However, other models such as
differential latency of postdiction (Eagleman) were also proposed, such
that it is yet not clear what is the neural substrate of the FLE. Here,
similarly to the model compensating for delays, we define a model of
predictive processing defined on the visual topography using an internal
representation of visual motion [@Perrinet12pred] to define an
anisotropic diffusion of information fig. 2, A.

The model that we used for the FLE can be used with any image. In
particular, a single flashed dot evokes an expanding then contracting
isotropic activity while a moving dot may produce a soliton-like wave
which may traverse an occlusion [@Khoei13jpp]. More generally, this
model may be described as a simplification of the Navier Stokes equation
of fluid dynamics using the advection term. As such, solutions to these
equations are typically waves which are traveling on the retinotopic
map. A particular feature of these maps is that these include an
amplification term for rectilinear motions. As a consequence, once an
object begins to be tracked, its position is predicted in the future,
such that position and velocity are better estimated. On the contrary, a
dot which is moving on an unpredictable trajectory is explained away by
the system. This explains some of the non-linear, binary behaviors
explained by this model [@Perrinet12]. It is of particular interest at
this point to understand if such a model extends to other stimuli or if
we can precise its neural correlate.

Applied to the image of the FLE, activity in the model shows three
different phases fig. 2, B. First, there is a rapid build-up of the
precision of the target after the first appearance of the moving dot (at
300 ms). Consistently with the Fröhlich effect [@Jancke10], the
beginning of the trajectory is seen ahead of its physical position.
During the second phase, the moving dot is correctly tracked as both its
velocity and position are correctly inferred. This is ahead of the
delayed trajectory of the dot (green dotted line). Motion extrapolation
correctly predicts the position at the present time and the position
follows the actual physical position of the dot (black dotted line).
Finally, the third phase corresponds to motion termination. The moving
dot disappears and the corresponding activity vanishes in the source
layer at t=900 ms. However, between t=800 ms and t=900 ms, the dot
position was extrapolated and predicted ahead of the terminal position.
At t=900 ms, while motion information is absent, the position
information is still transiently consistent and extrapolated using a
broad, centered prior distribution of speeds: Although it is less
precise, with *hindsight*, this position of the dot at flash termination
is therefore not perceived as leading the flash.

3.2 neural correlate of apparent motion {#sec:neural-correlate-of-apparent-motion}
---------------------------------------

Let's apply a similar approach to another visual illusion: When two
stationary dots are flashed at close successive positions and times,
observers may experience a percept of motion. This transforms the
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

In a recent study [@Chemla18], we used VSDI to record the activity of
the primary visual cortex (V1) of awake macaque monkeys. Is there any
difference between the response to the single dot and that to the two
dots? Indeed, VSD recordings allow to record the activity of populations
of neurons which are approximately at the scale of a cortical column.
Also, the recorded response is rapid enough to capture the dynamics of
the lrAM stimulus. These recordings show that as the evoked activity of
the second stimulus reaches V1, a cortical suppressive wave propagates
toward the retinolopic wave evoked by the first dot. This was put in
evidence by statistically comparing the response of the brain to the
response of the two dots in isolation. In particular, we found that
thanks to this suppressive wave, the activity for the brain stimulus was
more precise, suggesting that such suppressive wave could serve as
predictive processing step to be read-out in upstream cortical areas.

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
This corresponds to the implementation of a predictive process using an
a priori knowledge of smoothly-moving visual objects.

3.3 summary {#sec:summary-1}
-----------

As a summary, we have seen that it is possible to extend predictive
processing to topographic maps. In particular, the resulting
computations are particularly adapted to vision. We have shown (see
fig. 2) a model which represents (at any given present time) different
variables (here "Source" and "Target"). In a more realistic model,
neural activity is more likely to form intermediate representations
between past, present and also future representations [@Glaser18] and at
different levels of adaptation as illustrated for the lrAM stimulus
[@Chemla18]. As a consequence, such processes are observed
phenomenologically as the propagation of neural information tangentially
to the cortical surface, modulating dynamically the feed-forward and
feed-back stream. In particular it is an open question whether such
neural computations [@Muller18] could be implemented by travelling waves
on the cortical surface.

4 Open problems in the science of visual predictive processing {#sec:spikes}
==============================================================

In sec. 2, we have studied the dynamics of predictive processing at the
macroscopic scale, that is, by considering different cortical areas as
different modes of a dependency graph. In sec. 3, we have extended such
models to fields of such nodes, organized on the topography of a single
visual area. At a finer scale than this intermediate mesoscopic scale is
the microscopic scale of actual neural cells. To better understand the
mechanisms of predictive processing, we now need to finesse the
granularity of the modeling to this scale. In particular, in addition to
the asynchronous nature of the neural representation that we explored
above, communication between neurons has the property of being
event-based. Indeed, in a vast majority of neural cells across the
living kingdom communicate using prototypical, short pulses called
action potentials or *spikes*. In this section, we will propose three
open problems which are raised when modeling such Spiking Neural
Networks (SNNs) in the context of predictive processing.

4.1 The challenges of representing visual information in Spiking Neural Networks (SNNs) {#sec:the-challenges-of-representing-visual-information-in-spiking-neural-networks-snns}
---------------------------------------------------------------------------------------

Following the first generations of ANNs, present machine learning
algorithms such as Deep Learning (DL) algorithms constitute a
breakthrough which formed a second generation of ANNs. SNNs constitute a
potential, third generation [@Ghosh09]. Indeed, event-based
representation have many advantages which are a deadlock in DL. For
instance, instead of repeating all compu­tations for each layer, channel
and pixel of a hierarchical network ANN, and for which energy-greedy
GPUs are necessary, event-based computations need only to be performed
for active units at the time of a spike. In particular, a fast
developing area of research consists in developing dedicated hardware,
such as neuromorphic chips, which would allow to scale the effective
volume of computations beyond the last generations of classical
semi-conductors (CPUs, GPUs) which attain the limits of Moore's Law.

Crucial in this new type of representation is on one hand the discrete
nature of the addressing of neurons and on the other hand the analog
nature of the timing of spikes. Notable results using such architectures
have been made in real-time classification and sensor fusion
[@Oconnor13] and in pattern recognition [@Lagorce17]. Indeed, an
important property of SNNs is the ability to represent dynamically a
latent, internal variable (the membrane potential in neuro-physiology)
and to emit a spike when (and only when) an internally defined threshold
is reached. This defines each spiking neuron as an integrator (similarly
to classical neurons), but also potentially as a synchrony detector.
This ability to modulate the processing based on the relative timing of
presynaptic spikes constitute a novel paradigm for neural computations
[@Paugam12]. In particular, this shows that the balance in the flux of
incoming excitatory and inhibitory spikes is crucial to maximize the
efficiency of such SNNs [@Hansel12].

4.2 The role of cortical waves in shaping the dynamic processing of visual information {#sec:the-role-of-cortical-waves-in-shaping-the-dynamic-processing-of-visual-information}
--------------------------------------------------------------------------------------

Another crucial point in deciphering the predictive processing
mechanisms is given by the functional anatomy. Indeed, in V1 as in other
cortical areas, the neural network is highly recurrent with a median
number of 10000 connections per neuron. Surprisingly, 95% of these
connections occur within a 2mm radius (macaque monkey) [@Markov13]. This
suggests that a majority of neural resources is devoted to intra-areal
communications. One putative functional role of this dense network is to
generate traveling waves which modulates the strength and dynamics of
the incoming feed-forward neural activity [@Muller18]. We have seen its
potential role in disambiguating motion [@Chemla18] and it has also been
shown to facilitate the progressive build-up of visual information
[@Bringuier99]. We have modeled successfully such a predictive process
[@Perrinet12pred, @Khoei13jpp, @KhoeiMassonPerrinet17] in a SNN
[@Kaplan13].

One "holy grail" in that direction is to find canonical micro-circuits
for predictive cooling [@Bastos12]. This follows from the observation
that across species and areas, the cortex seem to follow some
prototypical, layered structure. In the particular case of V1, while the
thalamic input reaches mostly the (intermediate) granular layer, a
feed-forward stream is mostly propagated to efferent layers through the
supra-granular layers while feed-back is in majority mediated by
infragranular layers. This anatomical segregation could correspond to
different types of signals in predictive coding, respectively expected
states and prediction error [@Bastos12]. Such basic micro-circuits have
been applied to explain the response of V1 neurons to natural scenes
[@Kremkow16] by using a push-pull mechanism. Still it is an open problem
as to know how such a circuitry may emerge.

4.3 Integrative properties of cortical areas: toward sparse, efficient representations {#sec:integrative-properties-of-cortical-areas-toward-sparse-efficient-representations}
--------------------------------------------------------------------------------------

Another interesting perspective is the integrative nature of neural
computations. While it was believed that neurons would represent the
combination of visual features, this is in general not correct
[@Tring18]. Instead, it has been found that activity may become sharper
as visual features are accumulated. For instance, [@Baudot13] has shown
that neurons in cat's area 17 respond more selectively when presenting
natural images (which consist locally to a sum of edges) compared to a
single edge. Recently, [@Ravello19] has shown that a similar result may
occur as soon as in the (rodent) retina. Behaviorally, this fits also
with the observation in humans that more complex textures are driving
more robustly eye movements [@Simoncini12]. Such phenomena are
consistent with the predictive processing principle that by accumulating
coherent information, the *a posteriori* probability and (hence the
response of the system) gets more precise.

Strikingly, this translates in the neural activity by the fact that for
a more coherent set of input, the neural activity of the population is
more sparse [@Vinje02; @Baudot13] This was already explained by the
predictive coding model of [@Rao99] and implemented in [@Kremkow16] for
instance. Importantly, the principle of sparse coding is itself
sufficient to guide the learning of the connectivity within a population
of neurons, such as in V1 [@Olshausen97]. This helps to solve an
important problem, that is, that the system is auto-organized and that
the learning of the connectivity should be unsupervised. As such the
plasticity rules that should be developed in SNNs should use similar
governing principles.

5 Summary and conclusions {#sec:summary-and-conclusions}
=========================

As a summary, we have reviewed in this chapter different models of
predictive coding applied to vision. We have seen at a macroscopic scale
the role of dynamics using Active Inference (see sec. 2). Extending such
model to a retinotopic map, we could describe a functional traveling
wave to disambiguate visual stimuli (see sec. 3). However, we have also
shown a limit of such models at the microscopic scale (see sec. 4). In
particular, it is not yet understood at the single cell level how 1)
information is represented in spiking activity, 2) what is the
functional role of traveling waves on cortical surfaces 3) if a common
efficiency principle (such as sparse coding) could be used to guide the
organization of such highly recurrent networks into a single universal
circuit.

To further extend our knowledge of predictive processing in vision (see
sec. 4), it thus seems necessary to be able to implement full-scale SNNs
implementing complex visual processes. However, the three different
anatomical scales that we have highlighted above (feed-forward, lateral,
feedback) seem to be tightly coupled and can difficulty be modeled
separately. As such, it is highly difficult to produce models which are
simple enough to be useful for our understanding of the underlying
processing [@Brette19]. For instance, all the models that we have
presented here are pre-connected, that is, that we have fixed the hyper
parameters controlling the interconnection of neurons. Though we have
provided with simulations showing the role of these hyper-parameters, it
seems necessary for a better understanding to further explore their
relative effects.

Indeed, a normative theory for predictive processing should not only
provide a possible solution (one given model with one set of hyper
parameters) but with an exploration of all *possible* solutions. One
first methodology is to have a complete understanding of the set of
models using mathematical analysis. However, this can be difficult,
especially for such complex systems and using simplifying assumptions
are often leading to a shallow complexity. Another venue is to develop
adaptive strategies to explore the functional space of different models.
This can be for instance developed using machine learning techniques
such as the stochastic gradient descent commonly used in deep learning.
Another promising solution is to explore bio-inspired adaptive
strategies. Those exist at different time-scales, from rapid adaption
mechanisms, to a slower learning of connections, or to the long-term
evolution of hyper- parameters. In particular, it is yet not completely
understood how SNNs perform a spike-lime dependent plasticity. This is a
future challenge in our understanding of the science of predictive
processes in vision.

6 References {#sec:references .unnumbered}
============
