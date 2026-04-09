# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Michelle Joo
Matt DeRoos

## Summary
In this lab, we learned how to design and implement clock dividers using two different types of counter: ripple counters and modulo counters. The ripple counter was built using T flip-flops connected in series, where each stage divides the frequency by 2. This showed how chaining flip-flops can quickly reduce a high-frequency signal into something more manageable. The modulo counter was more complex and used D filp-flops along with an adder and comparison logic. instead of dividing by powers of 2, it can divide by a specific value by resetting after reaching a certain count and toggling the output. This made it more flexible compared to the ripple counter. Overall, this lab helped us understand how digital circuits can control timing and frequency, and how different counter designs affect how signals behave. 

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
A modulo counterdivides by 2 times the count because the output only toggles when the counter reaches the specified value. However, one full cycle of a signal requires two transitions. One from low to high and one from high back to low. So if the counter counts up to N and toggles once, that is only half of a full cycle. It needs to count to N again to toggle back and compete the full cycle. Because of this, it takes 2N clock pulses to produce one full output cycle, which is why the division is 2 * count instead of just count. 

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
The ring counter output can go to all 1s on the first clock cycle if it is not properly initialized. A ring counter is supposed to start with only one flip-flop set to 1 and the rest set to 0. If this initial condition is not set, the starting state is undefined. When the first clock pulse occurs, the incorrect values can propagate through the flip-flops. Since all flip-flops update at the same time, this can cause multiple flip-flops to become 1, resulting in all outputs being 1. This happens because there is no controlled starting state.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
With the 100MHz input lock and a desire to get an output of 1KHz, we need to solve for the value of N where 2^N=100,000. (100,000,000 / 1000) = 100,000 so then --- N=16 is ~65,000 and N=17 is ~131,000. So we would need a ring counter of 17 bits to get this output.
