<?php
/**
 * Created by PhpStorm.
 * User: NamBoloa
 * Date: 11/12/16
 * Time: 1:43 AM
 */

namespace common\models;

use yii\base\Model;
use Yii;

class RecordStatus extends Model
{
    /**
     * id
     */
    const STATUS_INACTIVE = 0;
    const STATUS_ACTIVE   = 1;
    
    /**
     * @return array
     */
    public static function getStatusList()
    {
        return [
            self::STATUS_ACTIVE   => self::getStatusLabel(self::STATUS_ACTIVE),
            self::STATUS_INACTIVE => self::getStatusLabel(self::STATUS_INACTIVE),
        ];
    }
    
    /**
     * @param $status
     *
     * @return null|string
     */
    public static function getStatusLabel($status)
    {
        switch($status)
        {
            case self::STATUS_ACTIVE:
                return Yii::t('app','Active');
                break;
            case self::STATUS_INACTIVE:
                return Yii::t('app','Inactive');
                break;
            default:
                return null;
        }
    }
}