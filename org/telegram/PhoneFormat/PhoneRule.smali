.class public Lorg/telegram/PhoneFormat/PhoneRule;
.super Ljava/lang/Object;
.source "PhoneRule.java"


# instance fields
.field public byte8:I

.field public flag12:I

.field public flag13:I

.field public format:Ljava/lang/String;

.field public hasIntlPrefix:Z

.field public hasTrunkPrefix:Z

.field public maxLen:I

.field public maxVal:I

.field public minVal:I

.field public otherFlag:I

.field public prefixLen:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x29

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x14

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    iget-object v7, p0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_6

    iget-object v7, p0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_1
    const/16 v7, 0x20

    if-ne v0, v7, :cond_2

    if-lez v4, :cond_2

    iget-object v7, p0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x6e

    if-ne v7, v8, :cond_1

    if-eqz p3, :cond_4

    :cond_1
    iget-object v7, p0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x63

    if-ne v7, v8, :cond_2

    if-eqz p2, :cond_4

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_3

    if-eqz v3, :cond_4

    if-ne v0, v10, :cond_4

    :cond_3
    iget-object v7, p0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v10, :cond_4

    const/4 v3, 0x0

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_1
    const/4 v2, 0x1

    if-eqz p3, :cond_4

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_4

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_8

    if-nez v1, :cond_8

    const-string/jumbo v7, "%s "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v9, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_8
    if-eqz p3, :cond_7

    if-nez v2, :cond_7

    invoke-virtual {v5, v9, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_2
        0x28 -> :sswitch_3
        0x63 -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method hasIntlPrefix()Z
    .locals 1

    iget v0, p0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasTrunkPrefix()Z
    .locals 1

    iget v0, p0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
