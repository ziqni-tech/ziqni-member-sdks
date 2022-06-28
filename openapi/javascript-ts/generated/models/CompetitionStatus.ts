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
 * 
 * @export
 * @enum {string}
 */
export enum CompetitionStatus {
    Unknown = 'Unknown',
    Deleting = 'Deleting',
    Deleted = 'Deleted',
    Draft = 'Draft',
    Template = 'Template',
    Preparing = 'Preparing',
    Ready = 'Ready',
    Starting = 'Starting',
    Active = 'Active',
    Finishing = 'Finishing',
    Finished = 'Finished',
    Cancelling = 'Cancelling',
    Cancelled = 'Cancelled'
}

export function CompetitionStatusFromJSON(json: any): CompetitionStatus {
    return CompetitionStatusFromJSONTyped(json, false);
}

export function CompetitionStatusFromJSONTyped(json: any, ignoreDiscriminator: boolean): CompetitionStatus {
    return json as CompetitionStatus;
}

export function CompetitionStatusToJSON(value?: CompetitionStatus | null): any {
    return value as any;
}
