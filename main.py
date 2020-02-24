#!/usr/bin/env pybricks-micropython
from pybricks import ev3brick as brick
from pybricks.ev3devices import Motor
from pybricks.parameters import Port

# ______first_bend________________________

test_motor = Motor(Port.A)  # initialize a motor at port A
test_motor.run_target(200, 50)  # Run motor 200 degs/sec to target angle of 50°

test_motor = Motor(Port.B)
test_motor.run_target(200, 50)

test_motor = Motor(Port.C)
test_motor.run_target(200, 50)

test_motor = Motor(Port.D)
test_motor.run_target(200, 50)


#_______second_bend_______________________

test_motor = Motor(Port.A)  
test_motor.run_target(200, -50) 

test_motor = Motor(Port.B)
test_motor.run_target(200, -50)

test_motor = Motor(Port.C)
test_motor.run_target(200, -50)

test_motor = Motor(Port.D)
test_motor.run_target(200, -50)