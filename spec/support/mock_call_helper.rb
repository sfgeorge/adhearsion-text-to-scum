
def default_mock_call
  Object.new.tap do|call|
    mock(call).to.any_number_of_times.returns '1112223333'
    mock(call).from.any_number_of_times.returns '2223334444'
  end
end