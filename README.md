# goku

### Contents

![filestructure with labels](https://i.imgur.com/gtZQ4jc.png)

### Setting up dev mode on Roku device

To activate developer mode on your Roku device, enter this sequence on the remote:```home + home + home + up + up + right + left + right + left + right```

Take note of your IP Target and create a password. Default Username is RokuDev

### Building the channel.zip

Using the information gathered when you activated developer mode on your device, run the following commands from inside the `channel` subdir:

```
export ROKU_DEV_TARGET=
export DEVPASSWORD=
make install
```

The script will then compress the necessary assets and push the channel to your device (launching automatically). You can also manually upload a channel by going directly to your `ROKU_DEV_TARGET IP` address and using the built in web interface. 
