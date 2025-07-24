function packageToolbox(~)
    opts = toolboxOptions;
    output_path = fileparts(opts.OutputFile);
    [status,msg,msg_id] = mkdir(output_path);
    if (status == 0)
        error(msg_id,msg);
    end
    matlab.addons.toolbox.packageToolbox(opts);
end