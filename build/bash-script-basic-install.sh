hybrisVersion=5.7.0.3
downloadDir=/opt/hybris-archive
hybrisZip=$downloadDir/hybris-commerce-suite-$hybrisVersion.zip
repo=http://project-repo.github.com
branch=projectbranch
unzip $hybrisZip "hybris/*" -d ../ && cd ../hybris/bin/ && git clone -b $branch $repo custom && cd platform && . ./setantenv.sh && ant all -Dinput.template=develop && ant customize clean all
