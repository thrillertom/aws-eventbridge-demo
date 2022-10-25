require "aws-sdk-eventbridge";

client = Aws::EventBridge::Client.new(
  region: 'us-west-2',
)

resp = client.put_events({
  entries: [ # required
    {
      time: Time.now,
      source: "custom.private",
      detail_type: "user terminated",
      detail: {
        id: 10,
        name: 'xiaolong 10',
        email: 'xiaolong+10@workstream.is',
        status: 'terminated',
        terminatedAt: Time.now
      }.to_json,
      event_bus_name: "xiaolong-test",
    },
  ]
})
puts resp

def handler(event:, context:)
  puts 'producer invoked'
end