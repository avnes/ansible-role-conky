master:
[![Build Status](https://travis-ci.org/avnes/ansible-role-conky.png?branch=master)](https://travis-ci.org/avnes/ansible-role-conky)
develop:
[![Build Status](https://travis-ci.org/avnes/ansible-role-conky.png?branch=develop)](https://travis-ci.org/avnes/ansible-role-conky)

ansible-role-conky
=========

Ansible role for installing conky and performing basic setup and configuration.
Basic .conkyrc copied from [doyousketch2] (https://gist.github.com/doyousketch2/c0088f3827025ee037735f156e2c903c)
and adjusted slightly.

Requirements
------------

None

Role Variables
--------------
The variables are found in defaults/main.yml, and are used with the conkyrc.j2 template.

    alignment
    background
    border_outer_margin
    border_width
    cpu_avg_samples
    default_color: white
    default_outline_color
    default_shade_color
    draw_borders
    draw_graph_borders
    draw_outline
    draw_shades
    double_buffer
    extra_newline
    font
    gap_x
    gap_y
    no_buffers
    out_to_console
    out_to_stderr
    own_window
    own_window_class
    own_window_transparent
    own_window_type
    own_window_hints
    short_units
    stippled_borders
    update_interval
    uppercase
    use_xft
    use_spacer
    show_graph_scale
    show_graph_range
    conky_text
    config_owner

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: all
      roles:
         - { role: avnes.ansible-role-conky }

License
-------

MIT

Author Information
------------------

https://github.com/avnes
