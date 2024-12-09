class GreetObserver < ActiveRecord::Observer

  observe :profile, :user

  def after_create(record)
    puts "Data Successfully Created for #{record.class.name}"
  end
end
