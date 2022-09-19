{
  self,
  inputs,
  lib,
  ...
}:
# Define package set structure
{

  config.owner = "limeytexan"; # < change this value to match your namespace

  # Template Configuration:
  # DO NOT EDIT
  config.extraPlugins = [
      (
        inputs.flox-extras.plugins.catalog {
          catalogDirectory = self.outPath + "/catalog";
          path = [self.__reflect.finalFlake.config.owner];
        }
      )
    ];
}
