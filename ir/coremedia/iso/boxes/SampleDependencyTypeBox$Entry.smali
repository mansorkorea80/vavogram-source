.class public Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;
.super Ljava/lang/Object;
.source "SampleDependencyTypeBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    return-void
.end method

.method static synthetic access$0(Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;)I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;

    iget v3, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    iget v4, v0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getReserved()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSampleDependsOn()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSampleHasRedundancy()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSampleIsDependentOn()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    return v0
.end method

.method public setReserved(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    shl-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    return-void
.end method

.method public setSampleDependsOn(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    shl-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    and-int/lit16 v1, v1, 0xcf

    or-int/2addr v0, v1

    iput v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    return-void
.end method

.method public setSampleHasRedundancy(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    iget v1, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    and-int/lit16 v1, v1, 0xfc

    or-int/2addr v0, v1

    iput v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    return-void
.end method

.method public setSampleIsDependentOn(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    shl-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    and-int/lit16 v1, v1, 0xf3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Entry{reserved="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getReserved()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sampleDependsOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getSampleDependsOn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sampleIsDependentOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getSampleIsDependentOn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sampleHasRedundancy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getSampleHasRedundancy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
