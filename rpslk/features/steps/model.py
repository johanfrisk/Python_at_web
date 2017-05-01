from behave import given, when, then

@given(u'the user gesture {user_gesture}')
def step_impl(context, user_gesture):
    '''
    Store the user's gesture in the context for later steps.
    '''
    context.user_gesture = user_gesture

@given(u'the computer gesture is the same')
def step_impl(context):
    '''
    Dictate that the game Model instance must have a method named
    generate_gesture() that will return the random computer gesture for the
    round. Replace that method here with a function that returns the
    same gesture as the user gesture. This is called "mocking".
    '''
    context.model.generate_gesture = lambda: context.user_gesture

@when(u'the game processes the round')
def step_impl(context):
    '''
    Dictate that the game Model instance must have a method named
    process_round() that takes the user gesture for the round as a parameter.
    Save the return value in the context for later steps.
    '''
    context.result = context.model.process_round(context.user_gesture)

@then(u'it reports the result as a {result}')
def step_impl(context, result):
    '''
    Assert that the result of the round matches what the spec stated should
    happen.
    '''
    assert context.result == result
