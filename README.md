# meta-inc

Framework for incremental browser games based on purescript-react 

## Setup for Nix/NixOS
Setup for nix-shell is simple; just run

    nix-shell

And you're good to boogie. Continue with the building instruction below

## Building
    bower install
    npm install

    make

Then, open http://localhost:8080. For this to work, you'll need python installed.
Python is only needed for serving the website. Check out dist/ if you don't need
or want to serve it locally.
