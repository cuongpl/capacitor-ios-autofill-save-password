## Installation
````batch
npm i capacitor-ios-autofill-save-password
npx cap sync
````
## Prerequisite
You must set up your app’s associated domains. To learn how to set up your app’s associated domains, see [Supporting Associated Domains](https://developer.apple.com/documentation/safariservices/supporting_associated_domains) in Apple Developer document.

## How to use
```ts
import { Capacitor } from '@capacitor/core';
import { SavePassword } from 'capacitor-ios-autofill-save-password';
    
login(username: string, password: string) {
    // your login logic here
        
    // call the plugin if login is successful on iOS
    if (Capacitor.getPlatform() === 'ios') {
        SavePassword.promptDialog({
            username: username,
            password: password,
        })
        .then(() => console.log('promptDialog success'))
        .catch((err) => console.error('promptDialog failure', err));
    }
}
```
