function plan = buildfile
    import matlab.buildtool.tasks.*

    plan = buildplan(localfunctions);

    plan("clean") = CleanTask;
    plan("check") = CodeIssuesTask;
    plan("test") = TestTask;
    plan("package") = matlab.buildtool.Task( ...
        Description = "Package Quick Data Toolbox", ...
        Dependencies = ["check" "test"], ...
        Actions = @packageToolbox);

    plan.DefaultTasks = ["check" "test" "package"];
end