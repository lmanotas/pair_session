task :migrate_organizers => :environment do
  Standup.all.each do |standup|
    puts "Standup ID: #{standup.id}"

    organizers = [Employee.find_by(id: standup.organiser_1_employee_id), Employee.find_by(id: standup.organiser_2_employee_id)]

    organizers.each do |organizer|
      puts "Organizer #{organizer.name}"
      standup.standup_attendees.build(employee: organizer, standup: standup, organizer: true)
    end

    if standup.save
      puts "Organizers Migrated for Standup: <ID: #{standup.id}>"
    else
      puts "Organizers couldnt Migrated for Standup: <ID: #{standup.id}>"
    end
  end
end