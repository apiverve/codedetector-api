declare module '@apiverve/codedetector' {
  export interface codedetectorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface codedetectorResponse {
    status: string;
    error: string | null;
    data: CodeDetectorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface CodeDetectorData {
      likelihood: number | null;
      family:     null | string;
      current:    null | string;
      readable:   null | string;
      extension:  null | string;
      paradigm:   null | string;
      isCompiled: boolean | null;
  }

  export default class codedetectorWrapper {
    constructor(options: codedetectorOptions);

    execute(callback: (error: any, data: codedetectorResponse | null) => void): Promise<codedetectorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: codedetectorResponse | null) => void): Promise<codedetectorResponse>;
    execute(query?: Record<string, any>): Promise<codedetectorResponse>;
  }
}
