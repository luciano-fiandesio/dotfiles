#!/bin/sh

java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=1044 \
    -Declipse.application=org.eclipse.jdt.ls.core.id1 \
    -Dosgi.bundles.defaultStartLevel=4 \
    -Declipse.product=org.eclipse.jdt.ls.core.product \
    -Dlog.protocol=true -Dlog.level=ALL \
    -noverify -Xmx1G \
    -jar $HOME/projects/github/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_1.5.700.v20200207-2156.jar -configuration /Users/luciano/projects/github/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/config_mac \
    -data /Users/luciano/tmp/javalsp

