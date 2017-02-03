.class public final Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;
    }
.end annotation


# static fields
.field private static final INDEX_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_RECYCLED_SAMPLES:I = 0x5

.field private static final SORT_ORDER_BY_INDEX:I = 0x1

.field private static final SORT_ORDER_BY_VALUE:I = 0x0

.field private static final SORT_ORDER_NONE:I = -0x1

.field private static final VALUE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentSortOrder:I

.field private final maxWeight:I

.field private nextSampleIndex:I

.field private recycledSampleCount:I

.field private final recycledSamples:[Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;

.field private final samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private totalWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$2;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$2;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->maxWeight:I

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->recycledSamples:[Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->currentSortOrder:I

    return-void
.end method

.method private ensureSortedByIndex()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->currentSortOrder:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->currentSortOrder:I

    :cond_0
    return-void
.end method

.method private ensureSortedByValue()V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->currentSortOrder:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->currentSortOrder:I

    :cond_0
    return-void
.end method


# virtual methods
.method public addSample(IF)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->ensureSortedByIndex()V

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->recycledSamples:[Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;

    iget v4, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    aget-object v1, v3, v4

    :goto_0
    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->nextSampleIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->nextSampleIndex:I

    iput v3, v1, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;->index:I

    iput p1, v1, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;->weight:I

    iput p2, v1, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;->value:F

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->totalWeight:I

    add-int/2addr v3, p1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->totalWeight:I

    :cond_0
    :goto_1
    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->totalWeight:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->maxWeight:I

    if-le v3, v4, :cond_3

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->totalWeight:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->maxWeight:I

    sub-int v0, v3, v4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;

    iget v3, v2, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;->weight:I

    if-gt v3, v0, :cond_2

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->totalWeight:I

    iget v4, v2, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;->weight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->totalWeight:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->recycledSamples:[Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;

    iget v4, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    aput-object v2, v3, v4

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;-><init>(Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$1;)V

    goto :goto_0

    :cond_2
    iget v3, v2, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;->weight:I

    sub-int/2addr v3, v0

    iput v3, v2, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;->weight:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->totalWeight:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->totalWeight:I

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getPercentile(F)F
    .locals 6

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->ensureSortedByValue()V

    iget v4, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->totalWeight:I

    int-to-float v4, v4

    mul-float v2, p1, v4

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;

    iget v4, v1, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;->weight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    cmpl-float v4, v4, v2

    if-ltz v4, :cond_0

    iget v4, v1, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;->value:F

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x7fc0

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;

    iget v4, v4, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile$Sample;->value:F

    goto :goto_1
.end method
