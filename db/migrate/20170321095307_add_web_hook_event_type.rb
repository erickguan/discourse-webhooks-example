class AddWebHookEventType < ActiveRecord::Migration
def up
  WebHookEventType.seed do |b|
    b.id = 100 # start with a relative large number so it doesn't conflict with the core type
    b.name = "notification"
  end

  WebHookEventType.seed do |b|
    b.id = 101
    b.name = "session"
  end
end

def down
  WebHookEventType.where('id >= 100').delete_all
end
end

