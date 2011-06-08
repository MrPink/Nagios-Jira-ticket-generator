require 'rubygems'
require 'jira4r'

jira = Jira4R::JiraTool.new(2, "http://yourjira.onjira.com")
jira.login("user", "password")

# create an issue.

OptionParser.new do |opts|
   opts.on("-s", "--summary summary text") do |s|
   issue = Jira4R::V2::RemoteIssue.new
   issue.project = "test"
     @summary = s 
     issue.summary = @summary
   opts.on("-d", "--description text") do |d|
     @description = d
     issue.description = @description 
   opts.on("-a", "--assignee username") do |a|
     @assignee = a 
     issue.assignee = @assignee 
     issue.type = "3"
   jira.createIssue(issue)
    end
  end
 end
end.parse!
