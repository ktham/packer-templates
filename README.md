# Packer Templates

This is a repository of available Packer templates. One day, hopefully,
there will be a website that makes it easier to discover these templates,
but for now a central repository helps quite a bit.

If you want to contribute a template, please make a pull request!

Note that these templates are not guaranteed to work. In fact, many rely
on external resources (URLs) that may change and cause them to fail. We don't
actively check to verify that every template works, although we do verify it
works prior to merging it. So, if a template isn't working, it is probably
*very* close to working and only a small external change affected it.

## Template Features

The templates all adhere to the following features:

  - Templates from ISO must install a bare-bones OS
  - Provisioners such as Chef, Puppet, etc. are _not_ installed into
    templates from ISOs.
  - VirtualBox/VMware guest tools _are_ installed into the machine,
    if applicable.
  - Templates are not configured with any Vagrant-specific things, though
    the intention is for them to be able to work with Vagrant.
  - Different builders are split into separate template files, rather
    than a single template file with multiple builders. This makes it easier
    for others to use only the pieces they want.

If you plan on submitting a template, please adhere to the above rules,
which are quite simple. Thanks!
