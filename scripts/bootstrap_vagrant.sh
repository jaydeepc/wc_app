#!/bin/bash

vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-librarian-chef
vagrant up --provision
