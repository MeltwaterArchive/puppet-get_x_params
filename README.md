# get_x_params

## Overview

Two Puppet functions that retrieve the parameter/argument list of Puppet Classes and Resource/Defined Types. Note that the functions do not retrieve the actual value that will be used for said parameters/arguments, but rather the default that is part of the class/type definition.

## Usage

parameter_key_val_hash = get_class_params("myclass1")
parameter_key_val_hash = get_define_params("mydefine1")

Then do something nice like use a Puppet template to create a wrapper script around your software that can accept and override all the parameters that were defined in Puppet.
