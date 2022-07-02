/*
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


package com.ziqni.member.sdk.model;

import java.util.Objects;
import java.util.Arrays;
import java.util.Map;
import java.util.HashMap;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonTypeName;
import com.fasterxml.jackson.annotation.JsonValue;
import com.ziqni.member.sdk.model.CompetitionFilter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;


/**
 * 
 */
@ApiModel(description = "")
@JsonPropertyOrder({
  CompetitionRequest.JSON_PROPERTY_COMPETITION_FILTER
})
@javax.annotation.processing.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen")
public class CompetitionRequest {
  public static final String JSON_PROPERTY_COMPETITION_FILTER = "competitionFilter";
  private CompetitionFilter competitionFilter;

  public CompetitionRequest() { 
  }

  public CompetitionRequest competitionFilter(CompetitionFilter competitionFilter) {
    this.competitionFilter = competitionFilter;
    return this;
  }

   /**
   * Get competitionFilter
   * @return competitionFilter
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")
  @JsonProperty(JSON_PROPERTY_COMPETITION_FILTER)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public CompetitionFilter getCompetitionFilter() {
    return competitionFilter;
  }


  @JsonProperty(JSON_PROPERTY_COMPETITION_FILTER)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setCompetitionFilter(CompetitionFilter competitionFilter) {
    this.competitionFilter = competitionFilter;
  }


  /**
   * Return true if this CompetitionRequest object is equal to o.
   */
  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CompetitionRequest competitionRequest = (CompetitionRequest) o;
    return Objects.equals(this.competitionFilter, competitionRequest.competitionFilter);
  }

  @Override
  public int hashCode() {
    return Objects.hash(competitionFilter);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CompetitionRequest {\n");
    sb.append("    competitionFilter: ").append(toIndentedString(competitionFilter)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

