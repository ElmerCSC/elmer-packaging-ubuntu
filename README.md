Packaging rules for various Ubuntu distros
==========================================

We use a following resources to build Ubuntu images of Elmer: 
1. Main elmer repository: https://github.com/elmercsc/elmerfem 
2. Packaging rules (this repo): https://github.com/ElmerCSC/elmer-packaging-ubuntu (each distro has different recipe)
3. Elmer CSC ubuntu packaging team home page at launchpad: https://launchpad.net/~elmer-csc-ubuntu
4. Elmer CSC ppa Elmer personal packaging archive at Launchpad: https://launchpad.net/~elmer-csc-ubuntu/+archive/ubuntu/elmer-csc-ppa
5. Launchpad Recipes: https://code.launchpad.net/~elmer-csc-ubuntu/+recipes  
6. Launchpad code is used to import code from GitHub to Launchpad 

Launchpad mirrors 1 and 2 to build the packages, once packages are built they are uploaded to 4. 
The mirrored code can be found from 3→"Code"→"View Git repositories". The building of the packages are controlled by "Launchpad Recipes". 

In order to create a new build from fresh set of packaging rules do: 
1. Import packaging rules repository to Launchpad: 
    - Follow 6 → "Import your project" 
    - Owner: Elmer CSC ubuntu packaging 
    - Project: elmercsc 
    - Name: , e.g. "packaging-bionic", "packaging-disco", …   
          - Repo url: Git, Point this to new packaging rules repository   
          - Target version control system: Git 
    - Request import 
2. Create a new recipe 
    - Go to https://code.launchpad.net/~elmer-csc-ubuntu/elmercsc/+git/elmer-github-devel → "Create packaging recipe" 
    - Give it a unique name, e.g. "elmer-daily-{ubuntuversion}" 
    - Owner: Elmer CSC ubuntu packaging 
    - [*] Built daily 
    - [*] Use an existing PPA: elmer-csc-ppa 
    -  Default distribution series:   
           - Click here which Ubuntu distro you wish to target the build. 
    - Recipe text (change to the name you set in stage 1 above):
      > \# git-build-recipe format 0.4 deb-version {debversion}-{time}~{git-commit}  
      > lp:~elmer-csc-ubuntu/elmercsc/+git/elmer-github-devel devel  
      > nest-part packaging lp:~elmer-csc-ubuntu/elmercsc/+git/<Imported git repo name here> distro_dir debian    
    - Click create recipe. And it should work
