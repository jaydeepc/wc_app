QuatsUpWorld 
============

A Simple Recommendation App
---------------------------

To run:

1. Clone git repo

2. Install virtual-box found with Google

3. Install vagrant found with Google

4. In the command line, run ```$ vagrant plugin install vagrant-omnibus```

5. Run ```$ vagrant plugin install
   vagrant-librarian-chef```

6. Run ```$ vagrant up --provision```

7. Change directories into the cloned git repo (from step 1) ```$ cd wc_app```

8. Run ```$ vagrant ssh```

9. Run ```$ cd /vagrant```

10. Run ```bundle exec rake db:create db:migrate```

11. Run ```$ bundle exec rails s```

12. Point your favorite browser to localhost:3000

Enjoy!

After running steps 1-5, to run the app subsequent times you should be
able to start at step 7.
