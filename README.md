some formatting tricks
----------------------

Blah blah [@Atick92, pp. 33-35, 38-39 and *passim*] by Atick
[-@Atick92].

<!--

https://lierdakil.github.io/pandoc-crossref/

hello $\LaTeX$ and hello $\tau_m=50~ms$

[@fig:label1;@fig:label2;...] or [@eq:euler] or [@tbl:label1;@tbl:label2;...] or @fig:label or @eq:label or @tbl:label

-->

[$$ \exp \pi = -1 \qquad(1)\qquad(1)$$]{#eq:euler}

See Equation eq. 1

Motivation : Role of dynamics in neural computations underlying visual processing {#sec:intro}
---------------------------------------------------------------------------------

Vision, the capacity of making sense of the luminous environment, is a
dynamic process. From its first stage, the retina, to the different
areas which help in forming a representation of the visual world knowing
its transformations as with the motion of a visual object but also to
sensory modifications, such as with eye movements. As such, visual
processing is not separable from the dynamics of the neural networks
involved in vision. To make sense of such a complex system, it has been
proposed that the organization of the visual system is such that it is
efficient [@Attneave54]. Such an ecological framework (Atick\] allows to
explain many aspects of visual processing. Formalizing such optimization
strategies in probabilistic language, these may be encompassed by the
Bayesian Brain framework [@Knill04]

Such principles take different forms such as redundancy reduction
[@Barlow61], maximisation of information transfer [@Linsker90] or
minimization of metabolic energy. However, it is possible to link these
different theories into a single framework, the Free-Energy Principle
[@Friston10]. Key to this principle is the notion that, knowing the
processes that generated the visual image and the internal generative
model that allows its representation, predictive processes will take
advantage of a priori knowledge to form an optimal representation of the
image. Such an a priori knowledge is an explicit (probabilistic)
representation of the structure of the world. For instance, an image
composed of edges will be understood at a higher level using the a
priori knowledge of the link between any individual edges to form a
representation of the *contours* of visual objects. In the time domain,
the knowledge of the motion of visual objects may help predict their
future positions..

However, there are limits to this efficiency. First, luminous
information can be noisy and ambiguous, such as in dim light conditions.
Second, neural networks have limited information transfer capacities and
importantly process information with a certain delay. In humans for
instance, the delay for the transmission of retinal information is
approx 80ms, while the minimal latency to perform a motor action is
approx an additional 50 ms. While this constrains a lot the capacity of
the visual system, we will take advantage of these delays to better
unravel visual processes as they unfold in time.

A correct definition of time in that processes is essential to this
endeavour. For instance, as we record a neural cell in some visual
areas, we may display in a raster plot the timing of the spikes that the
cell emitted. The time is relative to that of the experimenter and is
given thanks to an external clock. The plot is shown a posteriori, that
is, after the recording of the spike trains. This absolute definition of
time was introduced by Newton and defines most of the laws of physics.
Consitstant with that, time measures the speed (or "width") of physical
transformations (Anaximandre, Rovelli\] In contrast, a neuron has no
access to a central clock but its response is controlled by the
distribution of electro-chemical gradients on its membrane, and only at
this present time. Such a notion of time is repeated for each neuron as
this network is mostly decentralized. Such an observation is essential
in understanding the principles guiding the organization of visual
processes. In particular, predictive processes can be only defined in
this interoceptive time, using only information at the present instant.

This chapter will review some dynamical predictive processing approaches
for vision at different scales of analysis, from the whole system to
intermediate representations and finally to neurons [@Marr83]. First, we
will apply the FEP to vision as a normative approach. Extending this
principle with the capacity of actively sampling sensory input, we will
define Active Inference (AI) and its potential role in understanding
vision, and also behaviors such as eye movements. Then, we will extend
it to understand how such processes may be implemented in retinotopic
maps. In particular, we will show how such a model may explain a visual
illusion, the Flash-lag effect. This will then be compared with
neurophysiological data and try to understand the potential role of
travelling waves in shaping visual processing. Finally, we will review
possible implementations of such models in Spiking Neural Networks. In
particular, we will review some models of elementary micro-circuits and
detail some potential rules for learning the structure of their
connections in an unsupervised manner. We will conclude by synthesizing
these results and their limit. In particular, we will try to define an
emerging notion for time as it appears in the predictive processes
defining visual processing.

active inference {#sec:AI}
----------------

Trying to understand vision as an efficiency principle seems like a
teleological principle in which causation would be reversed. However, it
is one way "by which we may seek to learn how things came to be, and to
take their places in the harmonious complexity of the world."
[@DArcy-Thompson17, p.XXX]. Putting this another way, it is not
important to know if the brain is bayesian, and that some its part may
use Bayes rule explictly, but rather that it offers for a simpler
explanation of these complex system. Here, we will consider the visual
system from the retina to the oculomotor muscles as an organizarional
closure (Autopoeise / maturama / varela). This will follow basic
principles of self-organized behavior: namely, the imperative to
minimize the entropy of hidden states of the world and their sensory
consequences.

### Friston12

In a first study, we will propose that PERCEPTION (Helmhotz 1866) is an
active process of hypothesis testing by which we seek to confirm our
predictive models of the (hidden) world. In particular, we will equip
our sensory system with the ability to actively sample from the visual
world, defining Active Inference (AI). If perception corresponds to
hypothesis testing (Gregory, R. L. (1980). Perceptions as hypotheses.
Philos. Trans. R. Soc. Lond. B Biol. Sci. 290, 181--197.); then visual
searches might be construed as experiments that generate sensory data.
In this work, we explore the idea that saccadic eye movements are
optimal experiments, in which data are gathered to test hypotheses or
beliefs about how those data are caused. This provides a plausible model
of visual search that can be motivated from the basic principles of
self-organized behavior [@Gibson79]: namely, the imperative to minimize
the entropy of hidden states of the world and their sensory
consequences. This imperative is met if agents sample hidden states of
the world efficiently. This efficient sampling of salient information
can be derived in a fairly straightforward way, using approximate
Bayesian inference and variational free-energy minimization.

Simulations of the resulting AI scheme reproduce sequential eye
movements that are reminiscent of empirically observed saccades and
provide some counterintuitive insights into the way that sensory
evidence is accumulated or assimilated into beliefs about the world.

This schematic shows the dependencies among various quantities modelling
exchanges of an agent with the environment. It shows the states of the
environment and the system in terms of a probabilistic dependency graph,
where connections denote directed (causal) dependencies. The quantities
are described within the nodes of this graph -- with exemplar forms for
their dependencies on other variables.

-   Hidden (external) and internal states of the agent are separated by
    action and sensory states. Both action and internal states --
    encoding a conditional probability density function over hidden
    states -- minimise free energy. Note that hidden states in the real
    world and the form of their dynamics can be different from that
    assumed by the generative model; (this is why hidden states are in
    bold. ) \"\"","\"\"
-   Active inference uses a generalisation of Kalman filtering to
    provide Bayes optimal estimates of hidden states and action in
    generalized coordinates of motion. As we have seen previously, the
    central nervous system has to contend with axonal delays, both at
    the sensory and the motor levels. Representing hidden states in
    generalized coordinates provides a simple way of compensating for
    both these delays.

dark room problem

### neural implementation + Adams12

This mathematical framework can be mapped to the anatomy of the visual
system. Similar to the sketch that we have shown above, "compiling"
(that is, solving) the equations of Free-energy minimization forms a set
of coupled differential equations which correpond to different node
along the visuo-oculomotor pathways.

Rao, R. P., and Ballard, D. H. (1999). Predictive coding in the visual
cortex: a functional interpretation of some extra-classical
receptive-field effects. Nat. Neurosci. 2, 79--87.

.. and even better if these models may find a possible correspondance
into the neural anatomy and explain some deviation to a control
behaviour, such as that we modelled for understanding some aspects of
the EMs of schizophrenic patients

### oculomotor delays PerrinetAdamsFriston14

The central nervous system has to contend with axonal delays, both at
the sensory and the motor levels. For instance, in the human
visuo-oculomotor system, it takes approximately $\tau_s=50~ms$ for the
retinal image to reach the visual areas implicated in motion detection,
and a further $\tau_m$ of 40\~ms to reach the oculomotor muscles.

-   how does this impact behaviour? Indeed, one challenge for modelling
    is to understand EMs using AI as a problem of optimal motor control
    under axonal delays. let's move to a human, in particular a tennis
    player ---here (highly trained) Jo-Wilfried Tsonga at
    Wimbledon---...
-   ... trying to intercept a passing-shot ball at a (conservative)
    speed of $20~m.s^{-1}$, the position sensed on the retinal space
    corresponds to the instant when its image formed on the
    photoreceptors of the retina and reaches our hypothetical motion
    perception area behind: and at this instant, the sensed physical
    position is lagging behind (as represented here by
    $\tau_s \cdot v 1~m$ ), that is, approximately at $45$ degrees of
    eccentricity (red dotted line),
-   while the position at the moment of emitting the motor command will
    be $.8~m$ ahead of its present physical position ($\tau_m \cdot v$).
-   As a consequence, note that the player's gaze is directed to the
    ball at its **present** position (red line), in anticipatory
    fashion. Optimal control directs action (future motion of the eye)
    to the expected position (red dashed line) of the ball in the future
    --- and the racket (black dashed line) to the expected position of
    the ball when motor commands reach the periphery (muscles). This is
    obviously an interesting challenge for modelling an optimal control
    theory.

a novelty of our approach including known delays was to take advantage
of generalized coordinates to create an operator $T$ to travel back and
forth in time with a delay $\tau$. It is simply formed by using a Taylor
expansion of the succesive orders in the generalized coordinates which
takes this form in matrix form and thus simply by taking the exponential
matrix form. Applying such an operator to the FEM generates a slightly
different and more complicated formulation but it is important to note
that to compensate for delays, there is no change in the structure of
the network but just in how the synaptic weights are tuned (similar to
what we had done in the first part) \* The efficacy of this scheme will
be illustrated using neuronal simulations of pursuit initiation
responses, with and without compensation.

This figure reports the conditional estimates of hidden states and
causes during the simulation of pursuit initiation, using a single
rightward (positive) sweep of a visual target, while compensating for
sensory motor delays. We will use the format of this figure in
subsequent figures: the upper left panel shows the predicted sensory
input (coloured lines) and sensory prediction errors (dotted red lines)
along with the true values (broken black lines). Here, we see horizontal
excursions of oculomotor angle (upper lines) and the angular position of
the target in an intrinsic frame of reference (lower lines). This is
effectively the distance of the target from the centre of gaze and
reports the spatial lag of the target that is being followed (solid red
line). One can see clearly the initial displacement of the target that
is suppressed after a few hundred milliseconds. The sensory predictions
are based upon the conditional expectations of hidden oculomotor (blue
line) and target (red line) angular displacements shown on the upper
right. The grey regions correspond to 90% Bayesian confidence intervals
and the broken lines show the true values of these hidden states. One
can see the motion that elicits following responses and the oculomotor
excursion that follows with a short delay of about 64ms. The hidden
cause of these displacements is shown with its conditional expectation
on the lower left. The true cause and action are shown on the lower
right. The action (blue line) is responsible for oculomotor
displacements and is driven by the proprioceptive prediction errors.

-   This figure illustrates the effects of sensorimotor delays on
    pursuit initiation (red lines) in relation to compensated (optimal)
    active inference -- as shown in the previous figure (blue lines).
    The left panels show the true (solid lines) and estimated sensory
    input (dotted lines), while action is shown in the right panels.
    Under pure sensory delays (top row), one can see clearly the delay
    in sensory predictions, in relation to the true inputs. The thicker
    (solid and dotted) red lines correspond respectively to (true and
    predicted) proprioceptive input, reflecting oculomotor displacement.
    The middle row shows the equivalent results with pure motor delays
    and the lower row presents the results with combined sensorimotor
    delays. Of note here is the failure of optimal control with
    oscillatory fluctuations in oculomotor trajectories, which become
    unstable under combined sensorimotor delays.

the generative model has been equipped with a second hierarchical level
that contains hidden states, modelling latent periodic behaviour of the
(hidden) causes of target motion. With this addition, the improvement in
pursuit accuracy apparent at the onset of the second cycle of motion is
reinstated. This is because the model has an internal representation of
latent causes of target motion that can be called upon even when these
causes are not expressed explicitly in the target trajectory.

### summary

laws of vision: perspective, gravity, rebounds of a ball - resolves
Gestalt laws by seing it as conflicts between separate contexts time to
awareness / explanatory gap

topography {#sec:Maps}
----------

### fle

![Figure 1: Figure 1: ME. In [@Khoei17], we propose a model of
predictive processing in a topographic map. A) the model consists of a
two-layered map: an input source target integrates information from
visual sensors. This map represents both position and velocity, and we
represent here a representation for a mono-dimensional variable. Using
this belief (as represented here by the probability distribution
function), it is possible to project this information to a second target
layer that integrates information knowing a compensation for the delay.
In that particular case, speed is positive and thus information of
position is transported to the right. B) Response of a model
compensating for a 100ms delay to a moving dot. Representation of the
inferred probability of position and velocity with delay compensation as
a function of the iterations of the model (time). Darker colors denote
higher probabilities, while a light color corresponds to an unlikely
estimation. In particular, we focus on three particular epochs along the
trajectory, corresponding to the standard, flash initiated and
terminated cycles. The timing of these epochs flashes are indicated by
dashed vertical lines. In dark, the physical time and in green the
delayed input knowing $\tau=100~ms$. See text for an interpretation of
the result.](Khoei17.png){#fig:Khoei17}

The flash-lag effect (FLE) is a visual illusion which is popular for its
generality and simplicity. In its original form [@MacKay58], the
observer is asked to always fixate on a central cross in the screen. A
dot traverses the screen with a constant, horizontal motion. As it
reaches the center of the screen, another dot is briefly flashed just
below the moving dot. While they are vertically perfectly aligned, the
flashed dot is perceived as lagging the moving dot. This visual illusion
saw a resurgence of scientific interest with the motion extrapolation
model [@Nijhawan02, @Nijhawan09]. However, other models such as
differential latency of postdiction (Eagleman) were also proposed, such
that it is yet not clear what is the neural substrate of the FLE.

Activity in both models shows three different phases. First, there is a
rapid build-up of the precision of the target after the first appearance
of the moving dot (at $t=300~ms$). Consistently with the Frölich effect,
the beginning of the trajectory is seen ahead of its physical position.
During the second phase, the moving dot is correctly tracked as both its
velocity and position are correctly inferred. In the source layer, there
is no extrapolation and the trajectory follows the delayed trajectory of
the dot (green dotted line). In the target layer, motion extrapolation
correctly predicts the position at the present time and the position
follows the actual physical position of the dot (black dotted line)
fig. 1. Finally, the third phase corresponds to motion termination. The
moving dot disappears and the corresponding activity vanishes in the
source layer at $t=900~ms$. However, between $t=800~ms$ and $t=900~ms$,
the dot position was extrapolated and predicted ahead of the terminal
position. At $t=900~ms$, while motion information is absent, the
position information is still transiently consistent and extrapolated
using a broad, centered prior distribution of speeds. Although it is
less precise, this position of the dot at flash termination is therefore
not perceived as leading the flash.

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
the system. This explains some of the non-linear, binary behaviours
explained by this model. It is of particular interest at this point to
understand if such a model extends to other stimuli or if we can precise
its neural correlate.

hindsight, parodiction, sort of adaption \#\#\# neural correlate of
apparent motion

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
measured for intra-cortical connectcions in the primary visual cortex. A
more functional (probabilistic) model also showed that the cortical
suppressive wave allowed to disambiguate the stimulus by explaining away
(that is, suppressing) ambiguous alternatives. As a consequences, 1)
lateral interactions are key to generate travelling waves on the surface
of the cortex and 2) these waves help disambiguate the input stimulus.
This corresponds to the implementation of a predictive process using on
a priori knowledge of smoothly-moving visual objects.

### summary

neural implementation {#sec:neural}
---------------------

### The role of cortical waves in shaping the dynamic processing of visual information

single trials [@Muller14] review in [@Muller18]
