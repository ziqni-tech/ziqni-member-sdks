

# LeaderboardMember


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the player |  |
|**memberId** | **String** | Unique system identifier of a Member |  |
|**memberRefId** | **String** | The reference to this member in your system |  |
|**rankChangeFrom** | **Integer** | Previous rank held, null if no changes are recorded |  [optional] |
|**rankChangeType** | **Integer** | [-1] for rank-down, like 5 to 8. [0] for no change, [1] for rank-up like 9 to 3 |  [optional] |
|**params** | **Map&lt;String, BigDecimal&gt;** | The user defined values used in the rules builder |  [optional] |
|**goalReached** | **Boolean** | Has the player met the minimum requirements to qualify for a ranked position |  [optional] |



