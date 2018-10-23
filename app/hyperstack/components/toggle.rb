puts "executing toggle.rb"
class Toggle
  include Hyperstack::State::Observable

  def initialize(clear = false, set = true)
    @set = set
    @clear = clear
  end

  def acts_as_string?
    true
  end

  mutator(:toggle!) { @state = !@state }

  observer(:to_s) { @state ? @set : @clear }

  observer(:set?) { @state }

  observer(:clear?) { !@state }

  mutator(:set!) { @state = true }

  mutator(:clear!) { @state = false }
end
