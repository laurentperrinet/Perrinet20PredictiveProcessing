# From the retina to action: Predictive processing in the visual system

Visual areas are essential in transforming the raw luminous signal into a representation which efficiently conveys information about the environment. This process is constrained by various factors such as a wide variety of changes in the characteristics of the visual image but also by the necessity to be able to respond as quickly as possible to the incoming sensory stream, for instance to drive a movement of the eyes to the location of a potential danger. To achieve this, it is believed that the visual system takes advantage of the existence of a priori knowledge in the structure of visual information, such as the regularity in the shape and motion of visual objects. As such, the predictive coding coding framework offers a unified theory to explain many of the mechanisms at the different levels of the visual system and which were unveiled by decades of study in neurophysiology and psychophysics. However, we still lack a global normative approach unifying those mechanisms and we will review here some of the promising approaches which allow to explain the processing of visual information in the visual hierarchy from the time scale of coding to that of learning. In particular, we will describe how Active Inference, that is predictive coding with the ability to actively sample the visual space, can provide an unified account of visual mechanisms from the sensory information to the generation of an appropriate action. Then, we will extend this paradigm to the case where information is distributed on a topography, such as is the case for retino-topically organised visual areas. In particular, we will compare such models in light of recent neurophysiological data showing the role of travelling waves in shaping visual processing. Finally, we will propose some lines of research to understand how the previous functional models may be implemented at the neural level. In particular, we will describe models of cortical processing in terms of prototypical micro-circuits. These allow to separate the different flows of information, from feed-forward prediction error to feed-back anticipation error. Still, the particular implementation of such a circuit is not known and we will review some possible implementations using Spiking Neural Networks.

## Motivation : Role of dynamics in neural computations underlying visual processing
Vision, the capacity of making sense of the
luminous environment, is a dynamic process.
From its first stage, the retina, to the different
areas which help in forming a representation
of the visual world knowing its transformations
as with the motion of a visual objector but also
to sensory modifications, such as with eye movements.
As such, visual processing is not separable
from the dynamics of the neural networks
involved in vision.
Too make sense of such a complex system,
it has been proposed that the organization
of the visual system is such that it is efficient
[AH neave, Barlow]. Such an ecological
framework (Atick] allows to explain many
aspects of visual processing.

Such principles take different form such as
redundancy reduction, maximisation of
information transfer or minimization of
metabolic energy, However, it is possible
to link these different theories into a single
framework, the Free-Energy Principle [friston, 053.
Key to this principle is the notion that, knowing
the processes that generated the visual image
and the internal generative model that allows
its representation, predictive processes will take
advantage of a priori knowledge to form
an optimal representation of the image.
Such an a. priori knowledge is an explicit
(probabilistic) representation of the structure of
the world. For instance, an image composed
of edges will be understood at a higher level using
the a priori knowledge of the link between any
individual edges to form a representation of the
contours of visual objects. In the time domain,
the knowledge of the motion of visual objects may
help predict their future positions..

However, there are limits to this efficiency.
First, luminous information can be
noisy and ambiguous, such as in dim
light conditions. Second, neural networks
have limited information transfer capacities
and importantly process in formation
with a certain delay. In humans for
instance the delay for the transmission
of retinal information is approx 80ms,
while the minimal latency to
perform a motor action is approx an
additional 50 ms. While this constrains
a lot the capacity of the visual system,
we will take advantage of these delays
to better unravel visual processes -
as they unfold in time.


