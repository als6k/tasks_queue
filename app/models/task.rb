class Task < ActiveRecord::Base
  enum task_type: { make_dir: 0, unzip: 1, zip: 2 }

  enum status: { pending: 0, in_progress: 1, done: 2, failed: 3 }
end
