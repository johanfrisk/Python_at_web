import fibonacci
from behave import *


@given(u'a count of "{count}"')
def step_impl(context, count):
    context.count = int(count)

@when(u'I call the fib function')
def step_impl(context):
    fibonacci.fib(context.count)

@then(u'it should return the sequence "{sequence}"')
def step_impl(context):
    expected_seq = [int(s) for s in sequence.split(',')]
    assert expected_seq == context.result
