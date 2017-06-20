.class public Landroid/support/v4/view/j;
.super Landroid/view/ViewGroup;
.source "PagerTitleStrip.java"


# annotations
.annotation runtime Landroid/support/v4/view/ViewPager$a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/j$a;,
        Landroid/support/v4/view/j$d;,
        Landroid/support/v4/view/j$c;,
        Landroid/support/v4/view/j$b;
    }
.end annotation


# static fields
.field private static final n:[I

.field private static final o:[I

.field private static final q:Landroid/support/v4/view/j$b;


# instance fields
.field a:Landroid/support/v4/view/ViewPager;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:F

.field f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private final l:Landroid/support/v4/view/j$a;

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/view/i;",
            ">;"
        }
    .end annotation
.end field

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    sput-object v0, Landroid/support/v4/view/j;->n:[I

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101038c

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/j;->o:[I

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_21

    .line 107
    new-instance v0, Landroid/support/v4/view/j$d;

    invoke-direct {v0}, Landroid/support/v4/view/j$d;-><init>()V

    sput-object v0, Landroid/support/v4/view/j;->q:Landroid/support/v4/view/j$b;

    .line 111
    :goto_20
    return-void

    .line 109
    :cond_21
    new-instance v0, Landroid/support/v4/view/j$c;

    invoke-direct {v0}, Landroid/support/v4/view/j$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/j;->q:Landroid/support/v4/view/j$b;

    goto :goto_20

    .line 69
    nop

    :array_2a
    .array-data 4
        0x1010034
        0x1010095
        0x1010098
        0x10100af
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/view/j;->g:I

    .line 58
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/v4/view/j;->e:F

    .line 65
    new-instance v1, Landroid/support/v4/view/j$a;

    invoke-direct {v1, p0}, Landroid/support/v4/view/j$a;-><init>(Landroid/support/v4/view/j;)V

    iput-object v1, p0, Landroid/support/v4/view/j;->l:Landroid/support/v4/view/j$a;

    .line 124
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/j;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v4/view/j;->addView(Landroid/view/View;)V

    .line 125
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v4/view/j;->addView(Landroid/view/View;)V

    .line 126
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/j;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v4/view/j;->addView(Landroid/view/View;)V

    .line 128
    sget-object v1, Landroid/support/v4/view/j;->n:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 130
    if-eqz v2, :cond_4c

    .line 131
    iget-object v3, p0, Landroid/support/v4/view/j;->b:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroid/support/v4/d/c;->a(Landroid/widget/TextView;I)V

    .line 132
    iget-object v3, p0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroid/support/v4/d/c;->a(Landroid/widget/TextView;I)V

    .line 133
    iget-object v3, p0, Landroid/support/v4/view/j;->d:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroid/support/v4/d/c;->a(Landroid/widget/TextView;I)V

    .line 135
    :cond_4c
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 136
    if-eqz v3, :cond_57

    .line 137
    int-to-float v3, v3

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/j;->a(IF)V

    .line 139
    :cond_57
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 140
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 141
    iget-object v4, p0, Landroid/support/v4/view/j;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v4, p0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v4, p0, Landroid/support/v4/view/j;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    :cond_70
    const/4 v3, 0x3

    const/16 v4, 0x50

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/j;->i:I

    .line 146
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    iget-object v1, p0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/j;->f:I

    .line 149
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v1}, Landroid/support/v4/view/j;->setNonPrimaryAlpha(F)V

    .line 151
    iget-object v1, p0, Landroid/support/v4/view/j;->b:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 152
    iget-object v1, p0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 153
    iget-object v1, p0, Landroid/support/v4/view/j;->d:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 156
    if-eqz v2, :cond_b2

    .line 157
    sget-object v1, Landroid/support/v4/view/j;->o:[I

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 158
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 159
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    :cond_b2
    if-eqz v0, :cond_d4

    .line 163
    iget-object v0, p0, Landroid/support/v4/view/j;->b:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/j;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 164
    iget-object v0, p0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/j;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 165
    iget-object v0, p0, Landroid/support/v4/view/j;->d:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/j;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 172
    :goto_c3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 173
    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/j;->h:I

    .line 174
    return-void

    .line 167
    :cond_d4
    iget-object v0, p0, Landroid/support/v4/view/j;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 168
    iget-object v0, p0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 169
    iget-object v0, p0, Landroid/support/v4/view/j;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    goto :goto_c3
.end method

.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 114
    sget-object v0, Landroid/support/v4/view/j;->q:Landroid/support/v4/view/j$b;

    invoke-interface {v0, p0}, Landroid/support/v4/view/j$b;->a(Landroid/widget/TextView;)V

    .line 115
    return-void
.end method


# virtual methods
.method public a(IF)V
    .registers 4

    .prologue
    .line 230
    iget-object v0, p0, Landroid/support/v4/view/j;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 231
    iget-object v0, p0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 232
    iget-object v0, p0, Landroid/support/v4/view/j;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 233
    return-void
.end method

.method a(IFZ)V
    .registers 22

    .prologue
    .line 340
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/j;->g:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_127

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/i;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/j;->a(ILandroid/support/v4/view/i;)V

    .line 346
    :cond_17
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/view/j;->k:Z

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/j;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/j;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    .line 351
    div-int/lit8 v2, v3, 0x2

    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/j;->getWidth()I

    move-result v7

    .line 354
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/j;->getHeight()I

    move-result v4

    .line 355
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/j;->getPaddingLeft()I

    move-result v8

    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/j;->getPaddingRight()I

    move-result v9

    .line 357
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/j;->getPaddingTop()I

    move-result v10

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/j;->getPaddingBottom()I

    move-result v11

    .line 359
    add-int v12, v8, v2

    .line 360
    add-int v13, v9, v2

    .line 361
    sub-int v2, v7, v12

    sub-int v12, v2, v13

    .line 363
    const/high16 v2, 0x3f000000    # 0.5f

    add-float v2, v2, p2

    .line 364
    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, v2, v14

    if-lez v14, :cond_63

    .line 365
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v2, v14

    .line 367
    :cond_63
    sub-int v13, v7, v13

    int-to-float v12, v12

    mul-float/2addr v2, v12

    float-to-int v2, v2

    sub-int v2, v13, v2

    .line 368
    div-int/lit8 v12, v3, 0x2

    sub-int v12, v2, v12

    .line 369
    add-int v13, v12, v3

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/j;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v2

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    .line 373
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/j;->d:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getBaseline()I

    move-result v14

    .line 374
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 375
    sub-int v2, v15, v2

    .line 376
    sub-int v3, v15, v3

    .line 377
    sub-int v14, v15, v14

    .line 378
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/j;->b:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v2

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v16

    add-int v16, v16, v3

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/j;->d:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v17

    add-int v17, v17, v14

    .line 381
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 384
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/j;->i:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x70

    .line 389
    sparse-switch v16, :sswitch_data_146

    .line 392
    add-int v4, v10, v2

    .line 393
    add-int/2addr v3, v10

    .line 394
    add-int v2, v10, v14

    .line 411
    :goto_d1
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    .line 412
    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v3

    .line 411
    invoke-virtual {v10, v12, v3, v13, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 414
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/view/j;->h:I

    sub-int v3, v12, v3

    sub-int/2addr v3, v5

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 415
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v4/view/j;->b:Landroid/widget/TextView;

    add-int/2addr v5, v3

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v4/view/j;->b:Landroid/widget/TextView;

    .line 416
    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v4

    .line 415
    invoke-virtual {v8, v3, v4, v5, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 418
    sub-int v3, v7, v9

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/j;->h:I

    add-int/2addr v4, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/j;->d:Landroid/widget/TextView;

    add-int v5, v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/j;->d:Landroid/widget/TextView;

    .line 421
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 420
    invoke-virtual {v4, v3, v2, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 423
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/j;->e:F

    .line 424
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/view/j;->k:Z

    .line 425
    :goto_126
    return-void

    .line 342
    :cond_127
    if-nez p3, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/j;->e:F

    cmpl-float v2, p2, v2

    if-nez v2, :cond_17

    goto :goto_126

    .line 397
    :sswitch_132
    sub-int/2addr v4, v10

    sub-int/2addr v4, v11

    .line 398
    sub-int/2addr v4, v15

    div-int/lit8 v10, v4, 0x2

    .line 399
    add-int v4, v10, v2

    .line 400
    add-int/2addr v3, v10

    .line 401
    add-int v2, v10, v14

    .line 402
    goto :goto_d1

    .line 404
    :sswitch_13d
    sub-int/2addr v4, v11

    sub-int v10, v4, v15

    .line 405
    add-int v4, v10, v2

    .line 406
    add-int/2addr v3, v10

    .line 407
    add-int v2, v10, v14

    goto :goto_d1

    .line 389
    :sswitch_data_146
    .sparse-switch
        0x10 -> :sswitch_132
        0x50 -> :sswitch_13d
    .end sparse-switch
.end method

.method a(ILandroid/support/v4/view/i;)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/high16 v5, -0x80000000

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 277
    if-eqz p2, :cond_89

    invoke-virtual {p2}, Landroid/support/v4/view/i;->b()I

    move-result v0

    .line 278
    :goto_b
    iput-boolean v2, p0, Landroid/support/v4/view/j;->j:Z

    .line 281
    if-lt p1, v2, :cond_8d

    if-eqz p2, :cond_8d

    .line 282
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p2, v2}, Landroid/support/v4/view/i;->b(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 284
    :goto_17
    iget-object v4, p0, Landroid/support/v4/view/j;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v4, p0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_8b

    if-ge p1, v0, :cond_8b

    .line 287
    invoke-virtual {p2, p1}, Landroid/support/v4/view/i;->b(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 286
    :goto_26
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    add-int/lit8 v2, p1, 0x1

    if-ge v2, v0, :cond_35

    if-eqz p2, :cond_35

    .line 291
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/i;->b(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 293
    :cond_35
    iget-object v0, p0, Landroid/support/v4/view/j;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {p0}, Landroid/support/v4/view/j;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/j;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/j;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 297
    int-to-float v0, v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 298
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 299
    invoke-virtual {p0}, Landroid/support/v4/view/j;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/j;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/view/j;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 300
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 301
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 302
    iget-object v3, p0, Landroid/support/v4/view/j;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 303
    iget-object v3, p0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 304
    iget-object v3, p0, Landroid/support/v4/view/j;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 306
    iput p1, p0, Landroid/support/v4/view/j;->g:I

    .line 308
    iget-boolean v0, p0, Landroid/support/v4/view/j;->k:Z

    if-nez v0, :cond_86

    .line 309
    iget v0, p0, Landroid/support/v4/view/j;->e:F

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/j;->a(IFZ)V

    .line 312
    :cond_86
    iput-boolean v1, p0, Landroid/support/v4/view/j;->j:Z

    .line 313
    return-void

    :cond_89
    move v0, v1

    .line 277
    goto :goto_b

    :cond_8b
    move-object v2, v3

    .line 287
    goto :goto_26

    :cond_8d
    move-object v2, v3

    goto :goto_17
.end method

.method a(Landroid/support/v4/view/i;Landroid/support/v4/view/i;)V
    .registers 4

    .prologue
    .line 323
    if-eqz p1, :cond_a

    .line 324
    iget-object v0, p0, Landroid/support/v4/view/j;->l:Landroid/support/v4/view/j$a;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/i;->b(Landroid/database/DataSetObserver;)V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/j;->m:Ljava/lang/ref/WeakReference;

    .line 327
    :cond_a
    if-eqz p2, :cond_18

    .line 328
    iget-object v0, p0, Landroid/support/v4/view/j;->l:Landroid/support/v4/view/j$a;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/i;->a(Landroid/database/DataSetObserver;)V

    .line 329
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/j;->m:Ljava/lang/ref/WeakReference;

    .line 331
    :cond_18
    iget-object v0, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2f

    .line 332
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/j;->g:I

    .line 333
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v4/view/j;->e:F

    .line 334
    iget-object v0, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/view/j;->a(ILandroid/support/v4/view/i;)V

    .line 335
    invoke-virtual {p0}, Landroid/support/v4/view/j;->requestLayout()V

    .line 337
    :cond_2f
    return-void
.end method

.method getMinHeight()I
    .registers 3

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0}, Landroid/support/v4/view/j;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 474
    if-eqz v1, :cond_b

    .line 475
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 477
    :cond_b
    return v0
.end method

.method public getTextSpacing()I
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Landroid/support/v4/view/j;->h:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 248
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 250
    invoke-virtual {p0}, Landroid/support/v4/view/j;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 251
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_13

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_13
    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 257
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/i;

    move-result-object v1

    .line 259
    iget-object v2, p0, Landroid/support/v4/view/j;->l:Landroid/support/v4/view/j$a;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager$f;)Landroid/support/v4/view/ViewPager$f;

    .line 260
    iget-object v2, p0, Landroid/support/v4/view/j;->l:Landroid/support/v4/view/j$a;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$e;)V

    .line 261
    iput-object v0, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ViewPager;

    .line 262
    iget-object v0, p0, Landroid/support/v4/view/j;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/support/v4/view/j;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/i;

    :goto_31
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/j;->a(Landroid/support/v4/view/i;Landroid/support/v4/view/i;)V

    .line 263
    return-void

    .line 262
    :cond_35
    const/4 v0, 0x0

    goto :goto_31
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 267
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 268
    iget-object v0, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1f

    .line 269
    iget-object v0, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/i;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/j;->a(Landroid/support/v4/view/i;Landroid/support/v4/view/i;)V

    .line 270
    iget-object v0, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager$f;)Landroid/support/v4/view/ViewPager$f;

    .line 271
    iget-object v0, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/v4/view/j;->l:Landroid/support/v4/view/j$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager$e;)V

    .line 272
    iput-object v2, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ViewPager;

    .line 274
    :cond_1f
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 465
    iget-object v1, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_13

    .line 466
    iget v1, p0, Landroid/support/v4/view/j;->e:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_d

    iget v0, p0, Landroid/support/v4/view/j;->e:F

    .line 467
    :cond_d
    iget v1, p0, Landroid/support/v4/view/j;->g:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/view/j;->a(IFZ)V

    .line 469
    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, -0x2

    .line 429
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 430
    if-eq v0, v6, :cond_11

    .line 431
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must measure with an exact width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_11
    invoke-virtual {p0}, Landroid/support/v4/view/j;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/j;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 435
    invoke-static {p2, v0, v5}, Landroid/support/v4/view/j;->getChildMeasureSpec(III)I

    move-result v1

    .line 438
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 439
    int-to-float v3, v2

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 440
    invoke-static {p1, v3, v5}, Landroid/support/v4/view/j;->getChildMeasureSpec(III)I

    move-result v3

    .line 443
    iget-object v4, p0, Landroid/support/v4/view/j;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->measure(II)V

    .line 444
    iget-object v4, p0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->measure(II)V

    .line 445
    iget-object v4, p0, Landroid/support/v4/view/j;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->measure(II)V

    .line 448
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 449
    if-ne v1, v6, :cond_55

    .line 450
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 457
    :goto_45
    iget-object v1, p0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v4/view/o;->c(Landroid/view/View;)I

    move-result v1

    .line 458
    shl-int/lit8 v1, v1, 0x10

    invoke-static {v0, p2, v1}, Landroid/support/v4/view/o;->a(III)I

    move-result v0

    .line 460
    invoke-virtual {p0, v2, v0}, Landroid/support/v4/view/j;->setMeasuredDimension(II)V

    .line 461
    return-void

    .line 452
    :cond_55
    iget-object v1, p0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 453
    invoke-virtual {p0}, Landroid/support/v4/view/j;->getMinHeight()I

    move-result v3

    .line 454
    add-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_45
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 317
    iget-boolean v0, p0, Landroid/support/v4/view/j;->j:Z

    if-nez v0, :cond_7

    .line 318
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 320
    :cond_7
    return-void
.end method

.method public setGravity(I)V
    .registers 2

    .prologue
    .line 242
    iput p1, p0, Landroid/support/v4/view/j;->i:I

    .line 243
    invoke-virtual {p0}, Landroid/support/v4/view/j;->requestLayout()V

    .line 244
    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .registers 5

    .prologue
    .line 199
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/support/v4/view/j;->p:I

    .line 200
    iget v0, p0, Landroid/support/v4/view/j;->p:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Landroid/support/v4/view/j;->f:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 201
    iget-object v1, p0, Landroid/support/v4/view/j;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v1, p0, Landroid/support/v4/view/j;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    return-void
.end method

.method public setTextColor(I)V
    .registers 5

    .prologue
    .line 212
    iput p1, p0, Landroid/support/v4/view/j;->f:I

    .line 213
    iget-object v0, p0, Landroid/support/v4/view/j;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget v0, p0, Landroid/support/v4/view/j;->p:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Landroid/support/v4/view/j;->f:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 215
    iget-object v1, p0, Landroid/support/v4/view/j;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object v1, p0, Landroid/support/v4/view/j;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    return-void
.end method

.method public setTextSpacing(I)V
    .registers 2

    .prologue
    .line 182
    iput p1, p0, Landroid/support/v4/view/j;->h:I

    .line 183
    invoke-virtual {p0}, Landroid/support/v4/view/j;->requestLayout()V

    .line 184
    return-void
.end method
