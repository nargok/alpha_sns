namespace :db do
  desc 'Load the seed data from SEED_FILENAME'
  task :seed_from_file => 'db:abort_if_pending_migrations' do
    seed_file = File.join(Rails.root, 'db', 'seeds',ENV['SEED_FILENAME'])
    load(seed_file) if File.exists?(seed_file)
  end
end
