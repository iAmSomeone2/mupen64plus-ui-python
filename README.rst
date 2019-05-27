::

                  _____ __ __
       ____ ___  / ___// // / ____  __  __
      / __ `__ \/ __ \/ // /_/ __ \/ / / /
     / / / / / / /_/ /__  __/ /_/ / /_/ /
    /_/ /_/ /_/\____/  /_/ / .___/\__, /
                          /_/    /____/
        http://m64py.sourceforge.net
        A frontend for Mupen64Plus


About
=====

M64Py is a Qt5 front-end (GUI) for Mupen64Plus, a cross-platform
plugin-based Nintendo 64 emulator. Front-end is written in Python and it
provides a user-friendly interface over the Mupen64Plus shared library.

Features
========

* Changeable emulation plugins for audio, core, input, rsp, video
* Selection of emulation core
* Configuration dialogs for core, plugin and input settings
* ROMs list with preview images
* Input bindings configuration
* Cheats support
* Support gzip, bzip2, zip, rar and 7z archives
* Video extension (embedded OpenGL window)

Dependencies
============

* `PySide2 <https://www.qt.io/qt-for-python>`_ (QtCore, QtGui, QtWidgets, QtOpenGL)
* `PySDL2 <https://pysdl2.readthedocs.io>`_

Ubuntu 18.10 & up
++++++

``sudo apt-get install python3-pyside2 pyside2-tools python3-pyside2.qtopengl
libsdl2-dev``

Fedora 28 & up
++++++

``sudo dnf install SDL2-devel``

Fedora does not provide PySide2 as a system package. It can be installed with

``pip3 install PySide2 --user``
or
``sudo pip3 install PySide2`` for a system-wide install.

PyPi
++++

To install just the Python dependencies:

``pip3 install -r requirements.txt --user``

.. note::

  This will not install the other system dependencies which are listed above.

  You can also drop the ``--user`` flag and run as root user if you want to
  install system-wide, but this is not recommended, as this will likely
  screw up your distro's package management.

Install
=======

First, run ``python3 setup.py build`` followed by  ``python3 setup.py install``
to install

.. code::

  python3 setup.py build
  python3 setup.py install --user

.. note::

  If you use the ``--user`` flag, make sure ``~/.local/bin`` is in your
  user's path environment variable.

License
=======

M64Py is free/libre software released under the terms of the GNU GPL license.
Please see the ``COPYING`` file for details.
