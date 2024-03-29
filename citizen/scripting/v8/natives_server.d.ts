/**
 * Returns whether or not the specified player has enough information to start a commerce session for.
 * @param playerSrc The player handle
 * @return True or false.
 */
declare function CanPlayerStartCommerceSession(playerSrc: string): number;

/**
 * Cancels the currently executing event.
 */
declare function CancelEvent(): void;

/**
 * thisScriptCheck - can be destroyed if it belongs to the calling script.
 */
declare function CreateVehicle(modelHash: string | number, x: number, y: number, z: number, heading: number, isNetwork: boolean, thisScriptCheck: boolean): void;

declare function DeleteFunctionReference(referenceIdentity: string): void;

declare function DoesEntityExist(entity: number): number;

/**
 * Requests whether or not the player owns the specified SKU.
 * @param playerSrc The player handle
 * @param skuId The ID of the SKU.
 * @return A boolean.
 */
declare function DoesPlayerOwnSku(playerSrc: string, skuId: number): number;

declare function DropPlayer(playerSrc: string, reason: string): void;

declare function DuplicateFunctionReference(referenceIdentity: string): string;

declare function EnableEnhancedHostSupport(enabled: boolean): void;

declare function ExecuteCommand(commandString: string): void;

declare function FlagServerAsPrivate(private_: boolean): void;

/**
 * No, this should be called SET_ENTITY_KINEMATIC. It does more than just "freeze" it's position.
 * ^Rockstar Devs named it like that, Now cry about it.
 */
declare function FreezeEntityPosition(entity: number, toggle: boolean): void;

declare function GetConvar(varName: string, default_: string): string;

declare function GetConvarInt(varName: string, default_: number): number;

/**
 * Returns the name of the currently executing resource.
 * @return The name of the resource.
 */
declare function GetCurrentResourceName(): string;

declare function GetEntityCoords(entity: number): number[];

declare function GetEntityHeading(entity: number): number;

declare function GetEntityModel(entity: number): number;

declare function GetEntityPopulationType(entity: number): number;

declare function GetEntityRotation(entity: number): number[];

declare function GetEntityRotationVelocity(entity: number): number[];

declare function GetEntityScript(entity: number): string;

declare function GetEntityType(entity: number): number;

declare function GetEntityVelocity(entity: number): number[];

/**
 * Gets the current game timer in milliseconds.
 * @return The game time.
 */
declare function GetGameTimer(): number;

/**
 * This native converts the passed string to a hash.
 */
declare function GetHashKey(model: string): number;

declare function GetHostId(): string;

declare function GetInstanceId(): number;

declare function GetInvokingResource(): string;

declare function GetNumPlayerIdentifiers(playerSrc: string): number;

declare function GetNumPlayerIndices(): number;

/**
 * Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
 * See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
 * @param resourceName The resource name.
 * @param metadataKey The key to look up in the resource manifest.
 */
declare function GetNumResourceMetadata(resourceName: string, metadataKey: string): number;

declare function GetNumResources(): number;

declare function GetPasswordHash(password: string): string;

declare function GetPlayerEndpoint(playerSrc: string): string;

declare function GetPlayerFromIndex(index: number): string;

declare function GetPlayerGuid(playerSrc: string): string;

declare function GetPlayerIdentifier(playerSrc: string, identifier: number): string;

declare function GetPlayerLastMsg(playerSrc: string): number;

declare function GetPlayerName(playerSrc: string): string;

declare function GetPlayerPed(playerSrc: string): number;

declare function GetPlayerPing(playerSrc: string): number;

/**
 * Returns all commands that are registered in the command system.
 * The data returned adheres to the following layout:
 * ```
 * [
 * {
 * "name": "cmdlist"
 * },
 * {
 * "name": "command1"
 * }
 * ]
 * ```
 * @return An object containing registered commands.
 */
declare function GetRegisteredCommands(): any;

declare function GetResourceByFindIndex(findIndex: number): string;

/**
 * Gets the metadata value at a specified key/index from a resource's manifest.
 * See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
 * @param resourceName The resource name.
 * @param metadataKey The key in the resource manifest.
 * @param index The value index, in a range from [0..GET_NUM_RESOURCE_METDATA-1].
 */
declare function GetResourceMetadata(resourceName: string, metadataKey: string, index: number): string;

/**
 * Returns the physical on-disk path of the specified resource.
 * @param resourceName The name of the resource.
 * @return The resource directory name, possibly without trailing slash.
 */
declare function GetResourcePath(resourceName: string): string;

/**
 * Returns the current state of the specified resource.
 * @param resourceName The name of the resource.
 * @return The resource state. One of `"missing", "started", "starting", "stopped", "stopping", "uninitialized" or "unknown"`.
 */
declare function GetResourceState(resourceName: string): string;

declare function InvokeFunctionReference(referenceIdentity: string, argsSerialized: string, argsLength: number, retvalLength: number): string;

declare function IsAceAllowed(object: string): number;

/**
 * Gets whether or not this is the CitizenFX server.
 * @return A boolean value.
 */
declare function IsDuplicityVersion(): number;

declare function IsPlayerAceAllowed(playerSrc: string, object: string): number;

/**
 * Requests whether or not the commerce data for the specified player has loaded.
 * @param playerSrc The player handle
 * @return A boolean.
 */
declare function IsPlayerCommerceInfoLoaded(playerSrc: string): number;

declare function IsPrincipalAceAllowed(principal: string, object: string): number;

/**
 * Requests the commerce data for the specified player, including the owned SKUs. Use `IS_PLAYER_COMMERCE_INFO_LOADED` to check if it has loaded.
 * @param playerSrc The player handle
 */
declare function LoadPlayerCommerceData(playerSrc: string): void;

/**
 * Reads the contents of a text file in a specified resource.
 * If executed on the client, this file has to be included in `files` in the resource manifest.
 * Example: `local data = LoadResourceFile("devtools", "data.json")`
 * @param resourceName The resource name.
 * @param fileName The file in the resource.
 * @return The file contents
 */
declare function LoadResourceFile(resourceName: string, fileName: string): string;

declare function NetworkGetEntityFromNetworkId(netId: number): number;

/**
 * Returns the owner ID of the specified entity.
 * @param entity The entity to get the owner for.
 * @return On the server, the server ID of the entity owner. On the client, returns the player/slot ID of the entity owner.
 */
declare function NetworkGetEntityOwner(entity: number): number;

declare function NetworkGetNetworkIdFromEntity(entity: number): number;

declare function PerformHttpRequestInternal(requestData: string, requestDataLength: number): number;

/**
 * Registered commands can be executed by entering them in the client console (this works for client side and server side registered commands). Or by entering them in the server console/through an RCON client (only works for server side registered commands). Or if you use a supported chat resource, like the default one provided in the cfx-server-data repository, then you can enter the command in chat by prefixing it with a `/`.
 * Commands registered using this function can also be executed by resources, using the [`ExecuteCommand` native](#_0x561C060B).
 * The restricted bool is not used on the client side. Permissions can only be checked on the server side, so if you want to limit your command with an ace permission automatically, make it a server command (by registering it in a server script).
 * **Example result**:
 * ![](https://i.imgur.com/TaCnG09.png)
 * @param commandName The command you want to register.
 * @param handler A handler function that gets called whenever the command is executed.
 * @param restricted If this is a server command and you set this to true, then players will need the command.yourCommandName ace permission to execute this command.
 */
declare function RegisterCommand(commandName: string, handler: Function, restricted: boolean): void;

/**
 * An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
 * @param eventName An event name, or "\*" to disable HLL event filtering for this resource.
 */
declare function RegisterResourceAsEventHandler(eventName: string): void;

/**
 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
 * Registers a cached resource asset with the resource system, similar to the automatic scanning of the `stream/` folder.
 * @param resourceName The resource to add the asset to.
 * @param fileName A file name in the resource.
 * @return A cache string to pass to `REGISTER_STREAMING_FILE_FROM_CACHE` on the client.
 */
declare function RegisterResourceAsset(resourceName: string, fileName: string): string;

/**
 * Registers a build task factory for resources.
 * The function should return an object (msgpack map) with the following fields:
 * ```
 * {
 * // returns whether the specific resource should be built
 * shouldBuild = func(resourceName: string): bool,
 * // asynchronously start building the specific resource.
 * // call cb when completed
 * build = func(resourceName: string, cb: func(success: bool, status: string): void): void
 * }
 * ```
 * @param factoryId The identifier for the build task.
 * @param factoryFn The factory function.
 */
declare function RegisterResourceBuildTaskFactory(factoryId: string, factoryFn: Function): void;

/**
 * Requests the specified player to buy the passed SKU. This'll pop up a prompt on the client, which upon acceptance
 * will open the browser prompting further purchase details.
 * @param playerSrc The player handle
 * @param skuId The ID of the SKU.
 */
declare function RequestPlayerCommerceSession(playerSrc: string, skuId: number): void;

/**
 * Writes the specified data to a file in the specified resource.
 * Using a length of `-1` will automatically detect the length assuming the data is a C string.
 * @param resourceName The name of the resource.
 * @param fileName The name of the file.
 * @param data The data to write to the file.
 * @param dataLength The length of the written data.
 * @return A value indicating if the write succeeded.
 */
declare function SaveResourceFile(resourceName: string, fileName: string, data: string, dataLength: number): number;

declare function SetConvar(varName: string, value: string): void;

declare function SetConvarReplicated(varName: string, value: string): void;

declare function SetConvarServerInfo(varName: string, value: string): void;

/**
 * p7 is always 1 in the scripts. Set to 1, an area around the destination coords for the moved entity is cleared from other entities.
 * Often ends with 1, 0, 0, 1); in the scripts. It works.
 * Axis - Invert Axis Flags
 */
declare function SetEntityCoords(entity: number, xPos: number, yPos: number, zPos: number, xAxis: boolean, yAxis: boolean, zAxis: boolean, clearArea: boolean): void;

declare function SetEntityHeading(entity: number, heading: number): void;

/**
 * rotationOrder refers to the order yaw pitch roll is applied
 * value ranges from 0 to 5. What you use for rotationOrder when setting must be the same as rotationOrder when getting the rotation.
 * Unsure what value corresponds to what rotation order, more testing will be needed for that.
 * For the most part R* uses 1 or 2 as the order.
 * p5 is usually set as true
 */
declare function SetEntityRotation(entity: number, pitch: number, roll: number, yaw: number, rotationOrder: number, p5: boolean): void;

/**
 * Note that the third parameter(denoted as z) is "up and down" with positive ment.
 */
declare function SetEntityVelocity(entity: number, x: number, y: number, z: number): void;

declare function SetGameType(gametypeName: string): void;

declare function SetHttpHandler(handler: Function): void;

declare function SetMapName(mapName: string): void;

/**
 * Ped: The ped to warp.
 * vehicle: The vehicle to warp the ped into.
 * Seat_Index: [-1 is driver seat, -2 first free passenger seat]
 * Moreinfo of Seat Index
 * DriverSeat = -1
 * Passenger = 0
 * Left Rear = 1
 * RightRear = 2
 */
declare function SetPedIntoVehicle(ped: number, vehicle: number, seatIndex: number): void;

/**
 * Call SET_PLAYER_WANTED_LEVEL_NOW for immediate effect
 * wantedLevel is an integer value representing 0 to 5 stars even though the game supports the 6th wanted level but no police will appear since no definitions are present for it in the game files
 * disableNoMission-  Disables When Off Mission- appears to always be false
 */
declare function SetPlayerWantedLevel(player: number, wantedLevel: number, disableNoMission: boolean): void;

/**
 * colorPrimary & colorSecondary are the paint index for the vehicle.
 * For a list of valid paint indexes, view: pastebin.com/pwHci0xK
 * -------------------------------------------------------------------------
 * Use this to get the number of color indices: pastebin.com/RQEeqTSM
 * Note: minimum color index is 0, maximum color index is (numColorIndices - 1)
 */
declare function SetVehicleColours(vehicle: number, colorPrimary: number, colorSecondary: number): void;

declare function StartResource(resourceName: string): number;

declare function StopResource(resourceName: string): number;

declare function TempBanPlayer(playerSrc: string, reason: string): void;

/**
 * The backing function for TriggerClientEvent.
 */
declare function TriggerClientEventInternal(eventName: string, eventTarget: string, eventPayload: string, payloadLength: number): void;

/**
 * The backing function for TriggerEvent.
 */
declare function TriggerEventInternal(eventName: string, eventPayload: string, payloadLength: number): void;

declare function VerifyPasswordHash(password: string, hash: string): number;

/**
 * Returns whether or not the currently executing event was canceled.
 * @return A boolean.
 */
declare function WasEventCanceled(): number;

