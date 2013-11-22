IIC Vagrant Boxes Collection
===

Why?
===
Because Vagrant is awesome, but it's still seems to be hard to find a good
vagrant machine when you need one.

What?
===
Those are the common boxes we use here at the IIC for our dev work,
So they're mainly focused on our stack(we love Rails/Node :)

On top of that, we've added some cool stuff like:
- [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh) awesomeness - each box comes with a good common zsh shell built-in
- Your git config is cloned. you can git push from your machine from the get-go.

Requirements
===
- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com)
- [Berkshelf](http://berkshelf.com/)

Using
===
- clone the repo
- copy the machine you like to your project folder:
```
cp -r boxes/ruby_node_postgres my_project
```
- some project require you to first go to the provision
folder and install the berks recipes:
```
cd provision && berks && cd ..
```
- then simply do vagrant up from within the folder
- enjoy.

Contributing
===
Have an idea for a box, either open a PR with the implementation, or open an issue with a request, and we'll add it :)

Coming soon
===
- Postgres+Postgis box
- New4J+Postgres box



