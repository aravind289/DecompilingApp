.class Lcom/google/common/collect/RegularImmutableMultiset;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "RegularImmutableMultiset.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMultiset$SerializedForm;,
        Lcom/google/common/collect/RegularImmutableMultiset$ElementSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lcom/google/common/collect/RegularImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableMultiset<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient contents:Lcom/google/common/collect/ObjectCountHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ObjectCountHashMap<",
            "TE;>;"
        }
    .end annotation
.end field

.field private transient elementSet:Lcom/google/common/collect/ImmutableSet;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final transient size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/google/common/collect/RegularImmutableMultiset;

    .line 37
    invoke-static {}, Lcom/google/common/collect/ObjectCountHashMap;->create()Lcom/google/common/collect/ObjectCountHashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableMultiset;-><init>(Lcom/google/common/collect/ObjectCountHashMap;)V

    sput-object v0, Lcom/google/common/collect/RegularImmutableMultiset;->EMPTY:Lcom/google/common/collect/RegularImmutableMultiset;

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ObjectCountHashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ObjectCountHashMap<",
            "TE;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset;, "Lcom/google/common/collect/RegularImmutableMultiset<TE;>;"
    .local p1, "contents":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMultiset;->contents:Lcom/google/common/collect/ObjectCountHashMap;

    .line 46
    const-wide/16 v0, 0x0

    .line 47
    .local v0, "size":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/ObjectCountHashMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 48
    invoke-virtual {p1, v2}, Lcom/google/common/collect/ObjectCountHashMap;->getValue(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    iput v2, p0, Lcom/google/common/collect/RegularImmutableMultiset;->size:I

    .line 51
    return-void
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 60
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset;, "Lcom/google/common/collect/RegularImmutableMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->contents:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->get(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset;, "Lcom/google/common/collect/RegularImmutableMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    .line 71
    .local v0, "result":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    if-nez v0, :cond_0

    new-instance v1, Lcom/google/common/collect/RegularImmutableMultiset$ElementSet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/RegularImmutableMultiset$ElementSet;-><init>(Lcom/google/common/collect/RegularImmutableMultiset;Lcom/google/common/collect/RegularImmutableMultiset$1;)V

    iput-object v1, p0, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 32
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset;, "Lcom/google/common/collect/RegularImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset;, "Lcom/google/common/collect/RegularImmutableMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->contents:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->getEntry(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 55
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset;, "Lcom/google/common/collect/RegularImmutableMultiset<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 65
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset;, "Lcom/google/common/collect/RegularImmutableMultiset<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->size:I

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 136
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset;, "Lcom/google/common/collect/RegularImmutableMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMultiset$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMultiset$SerializedForm;-><init>(Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method
