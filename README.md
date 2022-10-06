# VidyoPlatform Connector iOS

## Setup VidyoClient SDK

1. Download the latest VidyoClient iOS SDK package [22.5.0.8](https://static.vidyo.io/22.5.0.8/package/VidyoClient-iOSSDK.zip) and unzip it.
2. Copy VidyoClient-iOSSDK folder to the project root folder

![Screenshot 2022-10-06 at 17 49 19](https://user-images.githubusercontent.com/38790517/194345036-611ee47e-d2a3-40e7-9431-921b031bc0f1.png)

## Bundle ID & Group Setup

Currently project has generic Bundle & BroadcastExtension IDs. In order to switch to your own Bundle ID and Provision Profile you have to add (register) your own Group:

![Screenshot 2022-10-06 at 17 42 24](https://user-images.githubusercontent.com/38790517/194343264-2298af76-1f0b-4161-a2a6-d18e2052e0f3.png)

Then assign this Group for:
- Main App Target
- Broadcast Extension

![Screenshot 2022-10-06 at 17 44 02](https://user-images.githubusercontent.com/38790517/194343664-ba85a694-b6e2-46d3-94a2-0ffbf89a81ea.png)

## Broadcast Constants

Go to > "BroadcastExtensionConstants"

![Screenshot 2022-10-06 at 17 45 14](https://user-images.githubusercontent.com/38790517/194343968-7dbf0c3e-3e78-408e-8a42-d9e4a672ff1b.png)

and update:
- Bundle ID 
- Group ID
- BroadcastExtension ID

> Make sure they are correctly migrated, otherwise, broadcast share won't start or immediately drop (common problem).
