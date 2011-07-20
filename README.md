# bundle2rpm: a gem to package bundles

bundle2rpm is a tool designed to facilitate the packaging and deployment of Gem bundles on RedHat-like Linux systems. Leveraging the lovely [Bundler](http://gembundler.com) tool, bundle2rpm strives to produce self-contained RPMs that can be easily installed on other systems.

### Why?

Let's talk enterprise (*gasp*). In extremely large development environments (hundreds of developers or more) it is not always possible for system administrators to accommodate requests to test, install and manage multiple versions of Ruby Gems. When development or production systems are shared between teams or projects, each with their own Gem requirements. To centrally maintain Gems across many systems that will satisfy the requirements of these many teams and projects is nearly impossible. Ideally, each project defines their own Gemfile and Bundler takes care of all the really hard work. bundle2rpm provides an elegant way to construct RPMs that can be built on development systems where compilers and header files are available, and then the binary RPM can be installed and leveraged on any other system in the organization.

### How?

Install Bundler and bundle2rpm:
`gem install bundler bundle2rpm`

Build your RPM (options are available, see `bundle2rpm -h`):
`bundle2rpm /path/to/your/Gemfile /where/to/install`

Install the RPM produced by bundle2rpm on any RedHat system:
`rpm -ivh yourbundled.rpm`

### Issues

bundle2rpm is still being tweaked. Documentation is still being pieced together as well. Still, please do let me know if you encounter any problems and I will be happy to take a look into them.
