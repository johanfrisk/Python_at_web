from behave import *

@given('we have Behave installed')
def step_impl(context):
    pass

@when('we implement a test')
def step_impl(context):
    assert True is not False

@then(u'Behave will test is for us!')
def step_impl(context):
    assert context.failed is False
