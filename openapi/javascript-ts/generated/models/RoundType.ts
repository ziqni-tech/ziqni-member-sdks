/* tslint:disable */
/* eslint-disable */
/**
 * Ziqni Gamification Cloud API
 * This is the gamification cloud for Ziqni
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/**
 * The type of rounds in a contest
 * @export
 * @enum {string}
 */
export enum RoundType {
    TimeBound = 'TimeBound',
    TargetBased = 'TargetBased'
}

export function RoundTypeFromJSON(json: any): RoundType {
    return RoundTypeFromJSONTyped(json, false);
}

export function RoundTypeFromJSONTyped(json: any, ignoreDiscriminator: boolean): RoundType {
    return json as RoundType;
}

export function RoundTypeToJSON(value?: RoundType | null): any {
    return value as any;
}
