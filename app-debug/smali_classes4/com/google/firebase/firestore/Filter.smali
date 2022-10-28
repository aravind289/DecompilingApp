.class public Lcom/google/firebase/firestore/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/Filter$CompositeFilter;,
        Lcom/google/firebase/firestore/Filter$UnaryFilter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs and([Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Filter;
    .locals 3
    .param p0, "filters"    # [Lcom/google/firebase/firestore/Filter;

    .line 181
    new-instance v0, Lcom/google/firebase/firestore/Filter$CompositeFilter;

    .line 182
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->AND:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/Filter$CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    .line 181
    return-object v0
.end method

.method public static arrayContains(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 2
    .param p0, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p1, "value"    # Ljava/lang/Object;

    .line 140
    new-instance v0, Lcom/google/firebase/firestore/Filter$UnaryFilter;

    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/firestore/Filter$UnaryFilter;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayContains(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 1
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 135
    invoke-static {p0}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->arrayContains(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    return-object v0
.end method

.method public static arrayContainsAny(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 2
    .param p0, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p1, "value"    # Ljava/lang/Object;

    .line 150
    new-instance v0, Lcom/google/firebase/firestore/Filter$UnaryFilter;

    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/firestore/Filter$UnaryFilter;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayContainsAny(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 1
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 145
    invoke-static {p0}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->arrayContainsAny(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    return-object v0
.end method

.method public static equalTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 2
    .param p0, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p1, "value"    # Ljava/lang/Object;

    .line 80
    new-instance v0, Lcom/google/firebase/firestore/Filter$UnaryFilter;

    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/firestore/Filter$UnaryFilter;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static equalTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 1
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 75
    invoke-static {p0}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->equalTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    return-object v0
.end method

.method public static greaterThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 2
    .param p0, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p1, "value"    # Ljava/lang/Object;

    .line 100
    new-instance v0, Lcom/google/firebase/firestore/Filter$UnaryFilter;

    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->GREATER_THAN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/firestore/Filter$UnaryFilter;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static greaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 1
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 95
    invoke-static {p0}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->greaterThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    return-object v0
.end method

.method public static greaterThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 2
    .param p0, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p1, "value"    # Ljava/lang/Object;

    .line 110
    new-instance v0, Lcom/google/firebase/firestore/Filter$UnaryFilter;

    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->GREATER_THAN_OR_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/firestore/Filter$UnaryFilter;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static greaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 1
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 105
    invoke-static {p0}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->greaterThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    return-object v0
.end method

.method public static inArray(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 2
    .param p0, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p1, "value"    # Ljava/lang/Object;

    .line 160
    new-instance v0, Lcom/google/firebase/firestore/Filter$UnaryFilter;

    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/firestore/Filter$UnaryFilter;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static inArray(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 1
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 155
    invoke-static {p0}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->inArray(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    return-object v0
.end method

.method public static lessThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 2
    .param p0, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p1, "value"    # Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/google/firebase/firestore/Filter$UnaryFilter;

    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->LESS_THAN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/firestore/Filter$UnaryFilter;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 1
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 115
    invoke-static {p0}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->lessThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    return-object v0
.end method

.method public static lessThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 2
    .param p0, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p1, "value"    # Ljava/lang/Object;

    .line 130
    new-instance v0, Lcom/google/firebase/firestore/Filter$UnaryFilter;

    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->LESS_THAN_OR_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/firestore/Filter$UnaryFilter;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 1
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 125
    invoke-static {p0}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->lessThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    return-object v0
.end method

.method public static notEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 2
    .param p0, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p1, "value"    # Ljava/lang/Object;

    .line 90
    new-instance v0, Lcom/google/firebase/firestore/Filter$UnaryFilter;

    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/firestore/Filter$UnaryFilter;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static notEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 1
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 85
    invoke-static {p0}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->notEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    return-object v0
.end method

.method public static notInArray(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 2
    .param p0, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p1, "value"    # Ljava/lang/Object;

    .line 170
    new-instance v0, Lcom/google/firebase/firestore/Filter$UnaryFilter;

    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/firestore/Filter$UnaryFilter;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static notInArray(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;
    .locals 1
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 165
    invoke-static {p0}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->notInArray(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    return-object v0
.end method

.method public static varargs or([Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Filter;
    .locals 3
    .param p0, "filters"    # [Lcom/google/firebase/firestore/Filter;

    .line 175
    new-instance v0, Lcom/google/firebase/firestore/Filter$CompositeFilter;

    .line 176
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->OR:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/Filter$CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    .line 175
    return-object v0
.end method
