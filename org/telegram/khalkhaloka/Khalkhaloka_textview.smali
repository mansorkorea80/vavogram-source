.class public Lorg/telegram/khalkhaloka/Khalkhaloka_textview;
.super Landroid/widget/TextView;
.source "Khalkhaloka_textview.java"


# instance fields
.field final topDown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Khalkhaloka_textview;->getGravity()I

    move-result v0

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    and-int/lit8 v1, v0, 0x7

    or-int/lit8 v1, v1, 0x30

    invoke-virtual {p0, v1}, Lorg/telegram/khalkhaloka/Khalkhaloka_textview;->setGravity(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/khalkhaloka/Khalkhaloka_textview;->topDown:Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/khalkhaloka/Khalkhaloka_textview;->topDown:Z

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/telegram/khalkhaloka/Khalkhaloka_textview;->topDown:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Khalkhaloka_textview;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x42b4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Khalkhaloka_textview;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Khalkhaloka_textview;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Khalkhaloka_textview;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x3d4c

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p2, p1}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Khalkhaloka_textview;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Khalkhaloka_textview;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/khalkhaloka/Khalkhaloka_textview;->setMeasuredDimension(II)V

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2

    sub-int v0, p4, p2

    add-int/2addr v0, p1

    sub-int v1, p3, p1

    add-int/2addr v1, p2

    invoke-super {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method
