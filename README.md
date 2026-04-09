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
In this lab we learned how to build clock dividers using counters. We used both modulo and ripple counters. Due to advanced speed of microprocessors, we do not always want or need to use the full speed a cpu is capable of, so we use clock dividers to step down the frequency to target a specific timing to achieve a desired result. We used flip flops and sequential logic to build these two types of counters.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
The modulo counter toggles its output once each time it reaches the target count value. At one cycle per second 1Hz, the signal goes from low to high and back to low. We count each time it reaches the target value, which would be two times as this signal cycles through. Hence having count * 2.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
The ring counter may go to all 1s if it was not properly initialized. All flip flops sample the inputs synchronously, and if the feedback conditions or initial conditions are not controlled each input could eveluate to a 1. Having a proper reset ensures we start from a known base case.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
With the 100MHz input lock and a desire to get an output of 1KHz, we need to solve for the value of N where 2^N=100,000. (100,000,000 / 1000) = 100,000 so then --- N=16 is ~65,000 and N=17 is ~131,000. So we would need a ring counter of 17 bits to get this output.
