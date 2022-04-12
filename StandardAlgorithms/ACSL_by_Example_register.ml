let () =
  let add_mpi_v_lib () =
    let share = ACSL_by_Example_options.Self.Share.get_dir ~mode:`Must_exist "." in
    Kernel.CppExtraArgs.add
      (Format.asprintf " -I%a" Datatype.Filepath.pp_abs share);

    if Plugin.is_present "instantiate" then
      Dynamic.Parameter.Bool.on "-instantiate" ();
  in
  Cmdline.run_after_configuring_stage add_mpi_v_lib
