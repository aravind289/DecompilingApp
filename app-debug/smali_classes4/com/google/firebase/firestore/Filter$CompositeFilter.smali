.class Lcom/google/firebase/firestore/Filter$CompositeFilter;
.super Lcom/google/firebase/firestore/Filter;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompositeFilter"
.end annotation


# instance fields
.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private final operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V
    .locals 0
    .param p2, "operator"    # Lcom/google/firebase/firestore/core/CompositeFilter$Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/Filter;",
            ">;",
            "Lcom/google/firebase/firestore/core/CompositeFilter$Operator;",
            ")V"
        }
    .end annotation

    .line 59
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/Filter;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/Filter;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/firebase/firestore/Filter$CompositeFilter;->filters:Ljava/util/List;

    .line 61
    iput-object p2, p0, Lcom/google/firebase/firestore/Filter$CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    .line 62
    return-void
.end method


# virtual methods
.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/Filter;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/firebase/firestore/Filter$CompositeFilter;->filters:Ljava/util/List;

    return-object v0
.end method

.method public getOperator()Lcom/google/firebase/firestore/core/CompositeFilter$Operator;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/firebase/firestore/Filter$CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    return-object v0
.end method
