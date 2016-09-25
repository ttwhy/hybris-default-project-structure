# A basic setup for creating a development env using hybris 
A basic structure how to manage your hybris project

Suggested usage:
	cd /your/projects/
	git clone https://github.com/ttwhy/hybris-default-project-structure.git yourProjectName
	cd yourProjectName
	git remote remove origin 
	git remote add origin git://your/repository 

## Kickstart for development
Please review the documentation within the build directory


# Usage
## Configuration
use ant customize to select the currently active configuration. 

Only add global configuration parts to the config/local.properties. All System specifc parts should be placed into the config/environments/SYSTEM/ directory

